//
//  AppsByThemeItem.swift
//  MyFirst_Mac_App
//
//  Created by hoonsbrand on 2023/04/10.
//

import SwiftUI

struct AppsByThemeItem: View {
    @State var imageName: String
    @State var themeName: String
    @State var title: String
    @State var description: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .cornerRadius(10)
            
            Text(themeName)
                .bold()
            
            Text(title)
                .font(.largeTitle)
            
            Text(description)
                .opacity(0.7)
        }
    }
}

struct AppsByThemeItem_Previews: PreviewProvider {
    static var previews: some View {
        AppsByThemeItem(imageName: "Theme1", themeName: "시작하기", title: "Microsoft 365로 협업하세요", description: "Microsoft 365로 더 쉽게 작업을 공유하세요.")
    }
}
