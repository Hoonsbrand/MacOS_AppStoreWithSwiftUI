//
//  Option.swift
//  MyFirst_Mac_App
//
//  Created by hoonsbrand on 2023/04/08.
//

import SwiftUI

// MARK: - Option (ListView에서 쓰일 title과 이미지)
// Hashable을 채택해준 이유는 ForEach에서 self로 id를 설정하기 위해
struct Option: Hashable {
//    let view: View
    let title: String
    let imageName: String
}
