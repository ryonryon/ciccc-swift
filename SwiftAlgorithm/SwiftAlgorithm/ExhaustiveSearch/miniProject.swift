//
//  miniProject.swift
//  SwiftAlgorithm
//
//  Created by 冨樫凌 on 2019-06-18.
//  Copyright © 2019 ryotogashi. All rights reserved.
//

import Foundation

func crawlDirctory(url: String, prefix: String = "") {
    
    let fileManager = FileManager.default
    
    if !fileManager.fileExists(atPath: url) {
        print("It isn't existing path")
    }
    
    do {
        let files = try fileManager.contentsOfDirectory(atPath: url)
        for i in 0..<files.count {
            
            let directoryName = i == files.count - 1
                ? "\(prefix)\(Path.blank)"
                : "\(prefix)\(Path.I)"
            
            let directoryName2 = i == files.count - 1
                ? "\(prefix)\(Path.L)"
                : "\(prefix)\(Path.T)"
            
            print("\(directoryName2)\(files[i])")
            
            var isDir: ObjCBool = false
            let filePath: String = "\(url)" + "\(files[i])" + "/"
            if fileManager.fileExists(atPath: filePath, isDirectory: &isDir) {
                
                crawlDirctory(url: filePath, prefix: directoryName)
            }
        }
    }
    catch let error as NSError {
        print("Ooops! Something went wrong: \(error)")
    }
    
}

enum Path: CustomStringConvertible {
    case T
    case L
    case I
    case blank
    
    var description: String {
        switch self {
        case .I:
            return "│ "
        case .L:
            return "└─"
        case .T:
            return "├─"
        case .blank:
            return "  "
        }
    }
}
