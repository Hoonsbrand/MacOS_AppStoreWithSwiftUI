//
//  AppItemModel.swift
//  MyFirst_Mac_App
//
//  Created by hoonsbrand on 2023/04/09.
//

import Foundation

struct AppItemModel {
    let imageName: String
    let appName: String
    let appDescription: String
    var isForIpad: Bool = false
    let isFree: Bool
    let isPurchaseInApp: Bool
    var price: String = ""
}
