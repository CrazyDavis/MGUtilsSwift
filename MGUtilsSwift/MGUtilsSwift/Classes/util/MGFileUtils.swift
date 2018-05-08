//
//  MGFileUtils.swift
//  mgbaseproject
//
//  Created by Magical Water on 2018/2/18.
//  Copyright © 2018年 Magical Water. All rights reserved.
//

import Foundation

public class MGFileUtils {

    private init() {}

    //預設的儲存資料夾, 所有api也都存在這裡
    public static var documentDir: URL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]

    public static func write(_ name: String, content: String, path: URL = documentDir) {
        let p = path.appendingPathComponent(name)

        do {
            try content.write(to: p, atomically: false, encoding: String.Encoding.utf8)
            print("寫入檔案成功: \n 檔名: \(name) \n路徑: \(path)\(name)")
        } catch {
            print("寫入檔案失敗: \n 檔名: \(name) \n 路徑: \(path)\(name)")
        }
    }


    public static func read(_ name: String, path: URL = documentDir) -> String? {
        let p = path.appendingPathComponent(name)
        var t: String?
        //reading
        do {
            t = try String(contentsOf: p, encoding: String.Encoding.utf8)
            print("讀取檔案成功: \n 檔名: \(name) \n路徑: \(path)\(name)")
        } catch {
            print("讀取檔案失敗: \n 檔名: \(name) \n路徑: \(path)\(name)")
        }
        return t
    }

    //得到在document底下某個資料夾的URL, 若底下沒有此資料夾, 則自動創建
    public static func getDirURL(_ dirName: String, path: URL = documentDir) -> URL {
        let p = path.appendingPathComponent(dirName)
        //檢查資料夾是否存在
        if !FileManager.default.fileExists(atPath: p.absoluteString) {
            //withIntermediateDirectories: 不管指定的目錄名稱中間的目錄是否存在，它都會自動不存在的目錄並將所有目錄建立完成
            try? FileManager.default.createDirectory(at: p, withIntermediateDirectories: true, attributes: nil)
        }
        return p
    }

    public static func getFilePath(_ name: String, path: URL = documentDir) -> URL {
        let p = path.appendingPathComponent(name)
        return p
    }

}
