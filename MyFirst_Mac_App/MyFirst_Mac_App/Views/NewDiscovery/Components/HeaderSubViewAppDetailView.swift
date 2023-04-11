//
//  HeaderSubViewAppDetailView.swift
//  MyFirst_Mac_App
//
//  Created by hoonsbrand on 2023/04/10.
//

import SwiftUI

// MARK: - HeaderSubViewAppDetailView
struct HeaderSubViewAppDetailView: View {
    
// MARK: - Properties
    @State var imageName: String
    @State var text: String
    
// MARK: - MainView
    var body: some View {
            VStack(spacing: 0) {
                Image("\(imageName)")
                    .resizable()
                    .scaledToFill()
                    
                ZStack(alignment: .center) {
                    Rectangle()
                        .fill(.quaternary)
                        .frame(height: 65)
                        
                    Text(text)
                        .foregroundColor(.secondary)
                }
        }
    }
}

// MARK: - Preview
struct HeaderSubViewAppDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderSubViewAppDetailView(imageName: "MeterForZoom", text: "<Meter for Zoom, Teams & Co>는 다가오는 가상 회의 일정을 캘린더에서 확인해 메뉴 막대에 모아둡니다.")
    }
}
