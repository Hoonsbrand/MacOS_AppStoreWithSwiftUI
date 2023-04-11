//
//  NewDiscoveryScrollView.swift
//  MyFirst_Mac_App
//
//  Created by hoonsbrand on 2023/04/08.
//

import SwiftUI

// MARK: - EditorsPickView
struct EditorsPickView: View {
    
    // MARK: - Properties
    // 1부터 6까지를 순회하며 app1, app2..와 같은 이미지를 쉽게 불러온다.
    let appImages = Array(1...3).map { "app\($0)" }
    
    let editorsItems: [EditorsPickModel] = [
        EditorsPickModel(categoryName: "추천 앱", title: "클립보드 기억력을 향상하는 방법", text: "한 번 복사하면 잊지 않고 기억하는 Pastebot", imageName: "app1"),
        EditorsPickModel(categoryName: "APPLE ARCADE", title: "닥터 후와 숨은그림찾기", text: "시공간을 초월한 미스터리 탐험기.", imageName: "app2"),
        EditorsPickModel(categoryName: "시작하기", title: "탁월한 Safari 확장 프로그램", text: "브라우저를 더 강력하게 만드는 앱을 만나보세요.", imageName: "app3")
    ]
    
    // MARK: - MainView
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 10) {
                ForEach(editorsItems, id: \.self.title) { item in
                    EditorsPickItem(categoryName: item.categoryName, title: item.title, text: item.text, imageName: item.imageName)
                }
            }
        }
    }
}

// MARK: - Preview
struct NewDiscoveryScrollView_Previews: PreviewProvider {
    static var previews: some View {
        EditorsPickView()
    }
}
