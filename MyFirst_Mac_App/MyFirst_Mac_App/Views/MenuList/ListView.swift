//
//  ListView.swift
//  MyFirst_Mac_App
//
//  Created by hoonsbrand on 2023/04/08.
//

import SwiftUI

// MARK: - ListView
struct ListView: View {
    
    // MARK: - Properties
    @State private var currentSelection = 0
    let options: [Option]
    
    // MARK: - MainView
    var body: some View {
        // 메뉴 리스트 만들기
        VStack {
            ForEach(options, id: \.self) { option in
                HStack {
                    Image(systemName: option.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20)
                    
                    Text(option.title)

                    Spacer()
                    
                } // HStack
                .padding(8)
            }
            
            Spacer()
        } // VStack
    }
}

// MARK: - Preview
struct ListView_Previews: PreviewProvider {
    static let options: [Option] = [
        .init(title: "새로운 발견", imageName: "star"),
        .init(title: "Arcade", imageName: "gamecontroller"),
        .init(title: "창작", imageName: "paintbrush"),
        .init(title: "업무", imageName: "paperplane"),
        .init(title: "플레이", imageName: "dice"),
        .init(title: "개발", imageName: "hammer"),
        .init(title: "카테고리", imageName: "square.grid.2x2"),
        .init(title: "업데이트", imageName: "square.and.arrow.down")
    ]
    
    static var previews: some View {
        ListView(options: options)
    }
}
