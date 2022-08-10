//
//  PageModel.swift
//  PincEffectDemo
//
//  Created by Imran Sayeed on 8/8/22.
//

import Foundation

struct Page: Identifiable {
    let id: Int
    let imageName: String
}

extension Page {
    var thumbnailName: String {
        "thumb-"+imageName
    }
}
