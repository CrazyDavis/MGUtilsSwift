//
//  ViewController.swift
//  MGUtilsSwift
//
//  Created by Magical Water on 2018/3/26.
//  Copyright © 2018年 Magical Water. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var previewView: UIView!
    
    var util = MGNetworkDetectUtils()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

//        let utils = MGCameraUtils()
//        utils.prepare { err in
//            if err == nil { try? utils.displayPreview(self.previewView) }
//            else {
//                print("開啟相機錯誤: \(err!.localizedDescription)")
//                MGToastUtils.show("開啟相機錯誤 \(err!.localizedDescription)")
//            }
//        }
        
        util.getPublicIpAddress {_ in 
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

