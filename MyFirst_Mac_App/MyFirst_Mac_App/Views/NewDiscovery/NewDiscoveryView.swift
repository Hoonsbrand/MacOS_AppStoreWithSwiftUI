//
//  MainView.swift
//  MyFirst_Mac_App
//
//  Created by hoonsbrand on 2023/04/08.
//

import SwiftUI

// MARK: - MainView
struct NewDiscoveryView: View {
    
    // MARK: - Properties
    @State private var currentSubview = AnyView(ContentView())
    @State private var showingSubview = false
    
    // MARK: - MainView
    var body: some View {
        StackNavigationView(currentSubview: $currentSubview, showingSubview: $showingSubview) {
            ScrollView {
                VStack(alignment: .leading) {
                    
                    // 헤더
                    Button {
                        showSubview(view: AnyView(HeaderSubView()))
                    } label: {
                        Image("header")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(10)
                    }
                    .buttonStyle(BorderlessButtonStyle())
                    
                    //                    ZStack {
                    //                        Image("header")
                    //                            .resizable()
                    //                            .aspectRatio(contentMode: .fit)
                    //                            .cornerRadius(10)
                    //
                    //                        NavigationLink(destination: HeaderSubView()) {
                    //                            Rectangle()
                    //                                .fill(.clear)
                    //                        }
                    //                        .buttonStyle(BorderlessButtonStyle())
                    //                    }
                    
                    
                    // 에디터 추천 앱
                    EditorsPickView()
                        .padding(.bottom, 30)
                    
                    
                    Divider()
                    
                    // 에디터 추천 앱 하단 부분
                    recommendedApps
                    
                } // VStack
                .padding(.horizontal)
                
            } // ScrollView
            
        } // StackNavigationView
        .navigationTitle("새로운 발견")
    }
    
    
    // MARK: - SubViews
    var recommendedApps: some View {
        
        VStack(alignment: .leading) {
            Group {
                Text("요즘 즐겨 쓰는 앱")
                    .font(.largeTitle)
                
                // 요즘 즐겨 쓰는 앱
                AppListView()
                    .padding(.bottom, 30)
            }
            
            Divider()
            
            Group {
                Text("Microsoft 365 탐구")
                    .font(.largeTitle)
                
                AppsByThemeView()
                    .padding(.bottom, 30)
            }
            
            Divider()
            
            Group {
                Text("무료 앱 순위")
                    .font(.largeTitle)
                AppListView()
                    .padding(.bottom, 30)
            }
            
            Divider()
            
            Group {
                Text("유료 앱 순위")
                    .font(.largeTitle)
                AppListView()
                    .padding(.bottom, 30)
            }
            
            Divider()
            
            Group {
                Text("더 스마트하게 일하는 방법")
                    .font(.largeTitle)
                
                AppsByThemeView()
                    .padding(.bottom, 30)
            }
        }
    }
    
    // MARK: - Helpers
    private func showSubview(view: AnyView) {
        withAnimation(.easeOut(duration: 0.3)) {
            currentSubview = view
            showingSubview = true
        }
    }
}
struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        NewDiscoveryView()
    }
}
