//
//  AppItem.swift
//  MyFirst_Mac_App
//
//  Created by hoonsbrand on 2023/04/08.
//

import SwiftUI

// MARK: - AppItem
struct AppItem: View {
    
    // MARK: - Properties
    @State var imageName: String
    @State var appName: String
    @State var appDescription: String
    @State var isForIpad: Bool = false
    @State var isFree: Bool
    @State var isPurchaseInApp: Bool
    @State var price: String = ""
    @State var isDividerNeeded: Bool = true
    
    // MARK: - MainView
    var body: some View {
        
        HStack {
            Image(imageName)
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(10)
            
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text(appName)
                        
                        Text(appDescription)
                            .foregroundColor(.gray)
                        
                        if isForIpad {
                            Text("iPad용으로 디자인됨")
                                .font(.caption)
                                .foregroundColor(.gray)
                                .opacity(0.5)
                        }
                    }
                    
                    Spacer()
                    
                    VStack(spacing: 5) {
                        Spacer()
                        Button {
                            print("download tapped")
                        } label: {
                            Text(isFree ? "받기" : price)
                                .foregroundColor(.blue)
                                .bold()
                        }
                        .padding(3)
                        .frame(width: 75)
                        .buttonStyle(.plain)
                        .background(Color.white)
                        .cornerRadius(20)
                        
                        
                        if isPurchaseInApp {
                            Text("앱 내 구입")
                                .foregroundColor(.gray)
                                .font(.system(size: 10))
                        }
                        Spacer()
                    }
                } // HStack
                if isDividerNeeded { Divider() }
            } // VStack
            
        } // HStack
        .frame(height: 70)
        
    }
}

// MARK: - Preview
struct AppItem_Previews: PreviewProvider {
    static var previews: some View {
        AppItem(imageName: "app1", appName: "CapCut - Vlog 동영상 편집 어플", appDescription: "음악, 필터, 스티커, 이모지, 회전, 자르기", isForIpad: true, isFree: true, isPurchaseInApp: true, price: "₩88,000")
    }
}
