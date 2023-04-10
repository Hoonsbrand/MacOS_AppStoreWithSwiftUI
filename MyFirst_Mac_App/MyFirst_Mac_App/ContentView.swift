//
//  ContentView.swift
//  MyFirst_Mac_App
//
//  Created by hoonsbrand on 2023/04/08.
//

import SwiftUI



// MARK: - ContentView
struct ContentView: View {
    // 현재 선택한 메뉴
    @State private var currentOption = 0
    
    let options: [Option] = [
        .init(title: "새로운 발견", imageName: "star"),
        .init(title: "Arcade", imageName: "gamecontroller"),
        .init(title: "창작", imageName: "paintbrush"),
        .init(title: "업무", imageName: "paperplane"),
        .init(title: "플레이", imageName: "dice"),
        .init(title: "개발", imageName: "hammer"),
        .init(title: "카테고리", imageName: "square.grid.2x2"),
        .init(title: "업데이트", imageName: "square.and.arrow.down")
    ]
    
    var body: some View {
        
        // NavigationView
        NavigationView {
            List {
                NavigationLink(destination: NewDiscoveryView()) {
                    HStack {
                        Image(systemName: "star")
                            .foregroundColor(.blue)
                            .font(.system(size: 14))
                        Text("새로운 발견")
                            .font(.system(size: 14))
                    }
                    .padding(.vertical, 5)
                }
                
                NavigationLink(destination: ArcadeView()) {
                    HStack {
                        Image(systemName: "gamecontroller")
                            .foregroundColor(.blue)
                            .font(.system(size: 14))
                        Text("Arcade")
                            .font(.system(size: 14))
                    }
                    .padding(.vertical, 5)
                }
                
                NavigationLink(destination: CreateView()) {
                    HStack {
                        Image(systemName: "paintbrush")
                            .foregroundColor(.blue)
                            .font(.system(size: 14))
                        Text("창작")
                            .font(.system(size: 14))
                    }
                    .padding(.vertical, 5)
                }
                
                NavigationLink(destination: OfficeView()) {
                    HStack {
                        Image(systemName: "paperplane")
                            .foregroundColor(.blue)
                            .font(.system(size: 14))
                        Text("업무")
                            .font(.system(size: 14))
                    }
                    .padding(.vertical, 5)
                }
                
                NavigationLink(destination: PlayView()) {
                    HStack {
                        Image(systemName: "dice")
                            .foregroundColor(.blue)
                            .font(.system(size: 14))
                        Text("플레이")
                            .font(.system(size: 14))
                    }
                    .padding(.vertical, 5)
                }
                
                NavigationLink(destination: DevelopementView()) {
                    HStack {
                        Image(systemName: "hammer")
                            .foregroundColor(.blue)
                            .font(.system(size: 14))
                        Text("개발")
                            .font(.system(size: 14))
                    }
                    .padding(.vertical, 5)
                }
                
                NavigationLink(destination: CategoryView()) {
                    HStack {
                        Image(systemName: "square.grid.2x2")
                            .foregroundColor(.blue)
                            .font(.system(size: 14))
                        Text("카테고리")
                            .font(.system(size: 14))
                    }
                    .padding(.vertical, 5)
                }
                
                NavigationLink(destination: UpdateView()) {
                    HStack {
                        Image(systemName: "square.and.arrow.down")
                            .foregroundColor(.blue)
                            .font(.system(size: 14))
                        Text("업데이트")
                            .font(.system(size: 14))
                    }
                    .padding(.vertical, 5)
                }
            }
            
            
            NewDiscoveryView()
        } // NavigationView
    }
}


/*
 https://betterprogramming.pub/stack-navigation-on-macos-41a40d8ec3a4
 */


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
