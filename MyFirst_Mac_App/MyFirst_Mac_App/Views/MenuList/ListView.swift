//
//  ListView.swift
//  MyFirst_Mac_App
//
//  Created by hoonsbrand on 2023/04/08.
//

import SwiftUI



// MARK: - ListView
struct ListView: View {
    let options: [Option]
   
//    @Binding var currentSelection: Int
    
    @State private var currentSelection = 0
    
    var body: some View {
        // 메뉴 리스트 만들기
        VStack {
            // Binding 변수를 통해 넘어온 Int로 현재 선택한 메뉴(option)를 명시
//            let current = options[currentSelection]
            
            ForEach(options, id: \.self) { option in
                HStack {
                    Image(systemName: option.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20)
                    
                    // 현재 머무르고있는 메뉴면 파란색, 아닌 메뉴들은 흰색 적용
                    Text(option.title)
//                        .foregroundColor(current == option ?
//                                         Color.blue : Color.white)
                    Spacer()
                    
                } // HStack
                .padding(8)
                // HStack에 onTapGesture를 적용 -> 메뉴 선택
                .onTapGesture {
//                    switch option.title {
////                    case "새로운 발견": currentSele
////                    case "Arcade":
////                    case "창작":
////                    case "업무":
////                    case "플레이":
////                    case "개발":
////                    case "카테고리":
////                    case "업데이트":
//                    default:
//
//                    }
                    print(option)
                    
                }
            }
            
            Spacer()
        } // VStack
    }
}

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
