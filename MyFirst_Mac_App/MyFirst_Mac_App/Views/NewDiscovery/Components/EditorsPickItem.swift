//
//  NewDiscoveryItem.swift
//  MyFirst_Mac_App
//
//  Created by hoonsbrand on 2023/04/08.
//

import SwiftUI

struct EditorsPickItem: View {
    let categoryName: String
    let title: String
    let text: String
    let imageName: String
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(categoryName)
                    .font(.system(size: 12))
                    .foregroundColor(.gray)
                    .bold()
                
                Text(title)
                    .font(.system(size: 20))
                    .padding(.bottom, 10)
                
                Text(text)
                    .font(.system(size: 12))
                    .foregroundColor(.gray)
                
                Spacer()
            }
            .padding(.leading)
            .padding(.top)
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
//                .frame(width: 100, height: 200)
//                .frame(height: 200)
                .padding(.trailing, 10)
                .padding(.vertical, 20)
        }
        .background(ColorManager.newDiscoveryColor)
        .cornerRadius(2)
        .frame(maxWidth: 800, maxHeight: 200)
    }
}

struct NewDiscoveryItem_Previews: PreviewProvider {
    static var previews: some View {
        EditorsPickItem(categoryName: "추천 앱", title: "클립보드 기억력을 향상하는 방법", text: "한 번 복사하면 잊지 않고 기억하는 Pastebot", imageName: "app1")
    }
}
