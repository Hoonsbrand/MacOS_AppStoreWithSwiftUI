//
//  HeaderSubView.swift
//  MyFirst_Mac_App
//
//  Created by hoonsbrand on 2023/04/10.
//

import SwiftUI

struct HeaderSubView: View {
    var body: some View {
        HStack(alignment: .top) {
            Image("HeaderSubView")
                .resizable()
                .cornerRadius(10)
                .padding()
            
            VStack(alignment: .leading) {
                Text("앱에 반드시 기능이 많아야 하는 건 아닙니다.")
                    .bold()
                + Text(" 다음에 소개하는 가성비 좋고 탁월한 앱으로 슬기로운 Mac 생활을 누려보세요.")
                    .foregroundColor(.secondary)
                    
                
                Text("\n일정관리")
                    .font(.system(size: 15))
                    .bold()
                
                Text("\n<In Your Face>는 회의 알림을 전체 화면으로 제공합니다. 이름처럼 '얼굴 앞에 들이밀어', 놓치거나 무시할 일이 없죠.")
                    .foregroundColor(.secondary)
                
                AppItem(imageName: "app1", appName: "In Your Face", appDescription: "생산성", isFree: true, isPurchaseInApp: true, isDividerNeeded: false)
                    .padding(.vertical)
                
                Text("<Meter for Zoom, Teams & Co>는 다음 회의 시간 및 내용을 메뉴 막대에 표시합니다. 클릭 한 번으로 온라인 회의에 참여할 수 있죠.")
                    .foregroundColor(.secondary)
                
                AppItem(imageName: "app2", appName: "Meter for Zoom, Teams & Co", appDescription: "생산성", isFree: true, isPurchaseInApp: true, isDividerNeeded: false)
                    .padding(.vertical)
                    
                    
            }
            .padding()
            
            
            
            
        }
    }
}

struct HeaderSubView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderSubView()
    }
}
