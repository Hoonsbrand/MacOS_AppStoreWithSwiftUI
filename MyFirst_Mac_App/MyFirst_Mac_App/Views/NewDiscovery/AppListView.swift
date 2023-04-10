//
//  AppListView.swift
//  MyFirst_Mac_App
//
//  Created by hoonsbrand on 2023/04/09.
//

import SwiftUI

struct AppListView: View {
    let appItems: [[AppItemModel]] = [
        [AppItemModel(imageName: "Civilization", appName: "Civilization® VI", appDescription: "건설. 정복. 고취.", isFree: false, isPurchaseInApp: true, price: "₩88,000"),
        AppItemModel(imageName: "Infuse", appName: "Infuse - 비디오 플레이어", appDescription: "비디오 구성 및 재생", isFree: true, isPurchaseInApp: true),
        AppItemModel(imageName: "Duolingo", appName: "듀오링고 (Duolingo)", appDescription: "영어를 비록한 외국어를 학습하세요", isForIpad: true, isFree: true, isPurchaseInApp: true)],
        [AppItemModel(imageName: "Pixelmator", appName: "Pixelmator Pro", appDescription: "누구나 가능한 전문적인 이미지 편집", isFree: false, isPurchaseInApp: false, price: "₩79,000"),
        AppItemModel(imageName: "Asphalt", appName: "아스팔트 8: 에어본", appDescription: "실제 레이싱카와 자동차", isFree: true, isPurchaseInApp: true),
        AppItemModel(imageName: "CapCut", appName: "CapCut - Vlog 동영상 편집 어플", appDescription: "음악, 필터, 스티커, 이모지, 회전, 자르기", isFree: true, isPurchaseInApp: true)],
        [AppItemModel(imageName: "Vectornator", appName: "Vectornator - Graphic Design", appDescription: "그래픽 및 디자인", isFree: true, isPurchaseInApp: false),
        AppItemModel(imageName: "Adobe", appName: "Adobe Lightroom", appDescription: "Edit, manage and share photos", isFree: true, isPurchaseInApp: true),
        AppItemModel(imageName: "Ulysses", appName: "Ulysses | 글쓰기 앱", appDescription: "궁극의 글쓰기 앱", isFree: true, isPurchaseInApp: true)]
    ]
    
    var body: some View {
        HStack(spacing: 20) {
            ForEach(0..<3) { index in
                let item = appItems[index]
                VStack {
                    ForEach(0..<3) { idx in
                        AppItem(imageName: item[idx].imageName, appName: item[idx].appName, appDescription: item[idx].appDescription, isForIpad: item[idx].isForIpad ,isFree: item[idx].isFree, isPurchaseInApp: item[idx].isPurchaseInApp, price: item[idx].price, isDividerNeeded: idx != 2 ? true : false)
                    }
                } // VStack
            }
        } // HStack
    }
}

struct AppListView_Previews: PreviewProvider {
    static var previews: some View {
        AppListView()
    }
}
