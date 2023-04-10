//
//  IntroduceView.swift
//  MyFirst_Mac_App
//
//  Created by hoonsbrand on 2023/04/08.
//

import SwiftUI

struct IntroduceView: View {
    var body: some View {
        VStack {
            Text("안녕하세요! 이창훈입니다.")
                .font(.largeTitle)
            
            Image("hoon")
                .resizable()
                .scaledToFit()
                .offset(y: 25)
                .clipShape(Circle())
                .overlay(
                    Circle().stroke(.white, lineWidth: 4)
                )
                .frame(width: 200, height: 200)
                
            
            Text("2023년 3월초부터 학교를 다니며 SwiftUI를 공부중에 있습니다. \n앱 및 프로그램을 만든다는 것은 집을 짓는 것과 비슷하다고 생각합니다. 저는 집을 짓기 위한 도구 중 UIKit을 처음으로 배웠으며, 다른 방식으로 집을 짓는 SwiftUI의 매력에 빠져 저만의 집을 짓는 도구들을 늘려가고 있습니다.")
            
            Spacer()
            
            Text("아직 많이 부족한 SwiftUI 실력과 Mac App 개발 경험이 아예 없지만, 조금이라도 저의 의지를 보여드리고자 이렇게 저의 첫 Mac App을 만들어보았습니다.")
            
            Spacer()
        }
    }
}

struct IntroduceView_Previews: PreviewProvider {
    static var previews: some View {
        IntroduceView()
    }
}
