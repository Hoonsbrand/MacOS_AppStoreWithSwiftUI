//
//  AppsByThemeView.swift
//  MyFirst_Mac_App
//
//  Created by hoonsbrand on 2023/04/10.
//

import SwiftUI

// MARK: - AppsByThemeView
struct AppsByThemeView: View {
    
    // MARK: - Properties
    private let apps: [AppsByThemeModel] = [
        AppsByThemeModel(imageName: "Theme1", themeName: "시작하기", title: "Microsoft 365로 협업하세요", description: "Microsoft 365로 더 쉽게 작업을 공유하세요."),
        AppsByThemeModel(imageName: "Theme2", themeName: "추천 앱", title: "생산성을 높이세요", description: "<Microsoft OneNote>에서 메모, 그 이상을 누리세요."),
        AppsByThemeModel(imageName: "Theme3", themeName: "더 깊이 보기", title: "Word를 사용자 지정하는 5가지 방법", description: "사용자 지정으로 <Microsoft Word>를 더욱 편리하게 사용하세요.")
    ]
    
    // MARK: - MainView
    var body: some View {
        HStack(alignment: .top) {
            ForEach(apps, id: \.self.title) { app in
                AppsByThemeItem(imageName: app.imageName, themeName: app.themeName, title: app.title, description: app.description)
            }
        }
    }
}

// MARK: - Preview
struct AppsByThemeView_Previews: PreviewProvider {
    static var previews: some View {
        AppsByThemeView()
    }
}
