//
//  HeaderSubView.swift
//  MyFirst_Mac_App
//
//  Created by hoonsbrand on 2023/04/10.
//

import SwiftUI

// MARK: - HeaderSubView
struct HeaderSubView: View {
    
// MARK: - MainView
    var body: some View {
        HStack(alignment: .top) {
            Image("HeaderSubView")
                .resizable()
                .cornerRadius(10)
                .padding()
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading) {
                    Text("앱에 반드시 기능이 많아야 하는 건 아닙니다.")
                        .bold()
                    + Text(" 다음에 소개하는 가성비 좋고 탁월한 앱으로 슬기로운 Mac 생활을 누려보세요.")
                        .foregroundColor(.secondary)
                    
                    scheduleManagement
                    
                } // VStack
                .padding()
            } // HStack
        }
    }
    
// MARK: - SubViews
    var scheduleManagement: some View {
        VStack(alignment: .leading) {
            Text("\n일정관리")
                .font(.system(size: 15))
                .bold()
            
            Group {
                Text("\n<In Your Face>는 회의 알림을 전체 화면으로 제공합니다. 이름처럼 '얼굴 앞에 들이밀어', 놓치거나 무시할 일이 없죠.")
                    .foregroundColor(.secondary)
                
                AppItem(imageName: "app1", appName: "In Your Face", appDescription: "생산성", isFree: true, isPurchaseInApp: true, isDividerNeeded: false)
                    .padding(.vertical)
                
                Text("<Meter for Zoom, Teams & Co>는 다음 회의 시간 및 내용을 메뉴 막대에 표시합니다. 클릭 한 번으로 온라인 회의에 참여할 수 있죠.")
                    .foregroundColor(.secondary)
                
                AppItem(imageName: "app2", appName: "Meter for Zoom, Teams & Co", appDescription: "생산성", isFree: true, isPurchaseInApp: true, isDividerNeeded: false)
                    .padding(.vertical)
            }
            
            HeaderSubViewAppDetailView(imageName: "MeterForZoom", text: "<Meter for Zoom, Teams & Co>는 다가오는 가상 회의 일정을 캘린더에서 확인해 메뉴 막대에 모아둡니다.")
                .padding(.vertical)
            
            Group {
                    Text("<AudioSwitcher>로 Airpods과 Mac 스피커 등 다양한 오디오 입력 및 출력을 빠르게 전환하고, 각 입출력 신호의 세기를 별도로 조정하세요.")
                        .foregroundColor(.secondary)
                    
                    AppItem(imageName: "Theme1", appName: "AudioSwitcher", appDescription: "유틸리티", isFree: false, isPurchaseInApp: false, price: "₩3,000", isDividerNeeded: false)
                        .padding(.vertical)
                    
                    Text("<Clocker>로 세계 시계를 메뉴 막대에서 확인하세요. 클릭하면 여러 시간대를 볼 수 있습니다.")
                    .foregroundColor(.secondary)
                    
                    AppItem(imageName: "Theme2", appName: "Clocker", appDescription: "생산성", isFree: true, isPurchaseInApp: false, isDividerNeeded: false)
                        .padding(.vertical)
                
                Text("영상 통화를 앞뒀나요? <Hand Mirror>의 메뉴 막대 아이콘을 클릭해 내 모습을 점검하세요.")
                    .foregroundColor(.secondary)
                
                AppItem(imageName: "Theme3", appName: "Hand Mirror", appDescription: "유틸리티", isFree: true, isPurchaseInApp: true, isDividerNeeded: false)
                    .padding(.vertical)
                
                Text("여러 프로젝트에 들인 시간을 <Time Sink>로 쉽게 추적하세요.")
                    .foregroundColor(.secondary)
                
                AppItem(imageName: "CapCut", appName: "Time Sink", appDescription: "생산성", isFree: false, isPurchaseInApp: false, price: "₩7,500", isDividerNeeded: false)
                    .padding(.vertical)
            }
        }
    }
}

// MARK: - Preview
struct HeaderSubView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderSubView()
    }
}
