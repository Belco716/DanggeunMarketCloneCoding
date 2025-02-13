//
//  ContentView.swift
//  DanggeunMarketCloneCoding
//
//  Created by 김진혁 on 2/13/25.
//

import SwiftUI

struct HomeView: View {
    
    @Environment(\.colorScheme) var colorScheme // 라이트 모드 색상 || 다크모드 색상
    
    var body: some View {
        NavigationStack {
        
            ZStack {
                Color.basic.edgesIgnoringSafeArea(.top)
                
                
                
                
                
                
            }//: VSTACK
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        print("test")
                    } label: {
                        Text("다산동")
                            .font(.title)
                            .bold()
                            .foregroundStyle(colorScheme == .light ? .black : .white)
                        Image(systemName: "chevron.down")
                            .foregroundStyle(colorScheme == .light ? .black : .white)
                    }
                }//: TOOLBARITEM
                
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        print("test")
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundStyle(colorScheme == .light ? .black : .white)
                    }
                }//: TOOLBARITEM
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        print("test")
                    } label: {
                        Image(systemName: "magnifyingglass")
                            .foregroundStyle(colorScheme == .light ? .black : .white)
                    }
                }//: TOOLBARITEM
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        print("test")
                    } label: {
                        Image(systemName: "bell")
                            .foregroundStyle(colorScheme == .light ? .black : .white)
                    }
                }//: TOOLBARITEM
                
                
                
            }
        }//: NAVIGATION
        
    }
}

#Preview {
    HomeView()
        .environment(\.colorScheme, .dark) // 🦇 다크모드
}
