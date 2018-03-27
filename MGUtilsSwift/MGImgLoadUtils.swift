//
//  MGImgLoadUtils.swift
//  
//
//  Created by Magical Water on 2018/3/27.
//

import Foundation
import UIKit
import Kingfisher

public class MGImgLoadUtils {

    private init() {}

    static public func load(_ imageView: UIImageView, url: URL) {
        imageView.kf.setImage(with: url)
    }

    public static func load(_ url: URL, handler: @escaping (UIImage?) -> Void) {
        KingfisherManager.shared.retrieveImage(
            with: url,
            options: nil,
            progressBlock: nil
        ) { (image, error, cacheType, imageURL) -> () in
            handler(image)
        }
    }
}
