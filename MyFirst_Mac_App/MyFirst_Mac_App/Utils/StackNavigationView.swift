//
//  StackNavigationView.swift
//  MyFirst_Mac_App
//
//  Created by hoonsbrand on 2023/04/10.
//

/*
 https://betterprogramming.pub/stack-navigation-on-macos-41a40d8ec3a4
 */

import SwiftUI

struct StackNavigationView<RootContent>: View where RootContent: View {
    @Binding var currentSubview: AnyView
    @Binding var showingSubview: Bool
    
    let rootView: () -> RootContent
    
    
    init(currentSubview: Binding<AnyView>, showingSubview: Binding<Bool>,
    @ViewBuilder rootView: @escaping () -> RootContent) {
            self._currentSubview = currentSubview
            self._showingSubview = showingSubview
            self.rootView = rootView
        }
    
    var body: some View {
        VStack {
            if !showingSubview {
                rootView()
            } else {
                StackNavigationSubview(isVisible: $showingSubview) {
                    currentSubview
            }
            .transition(.move(edge: .trailing))
            }
        }
    }
    
    private struct StackNavigationSubview<Content>: View where Content: View {
        @Binding var isVisible: Bool
        let contentView: () -> Content
        
        
        var body: some View {
            VStack {
                contentView() // subview
            }
            .toolbar {
                ToolbarItem(placement: .navigation) {
                    Button(action: {
                        withAnimation(.easeOut(duration: 0.3)) {
                            isVisible = false
                        }
                    }, label: {
                        Label("back", systemImage: "chevron.left")
                    })
                }
            }
        }
    }
}
