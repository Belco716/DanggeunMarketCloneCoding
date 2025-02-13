//
//  MainView.swift
//  DanggeunMarketCloneCoding
//
//  Created by 김진혁 on 2/13/25.
//

import SwiftUI

struct MainView: View {
    
    @State var initPageNumber: Int = 0
    @Environment(\.colorScheme) var colorScheme // 라이트 모드 색상 || 다크모드 색상
    
    var body: some View {
        
        
        TabView(selection: $initPageNumber) {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("홈")
                }
                .tag(0)
            
            
            NeighborhoodLifeView()
                .tabItem {
                    Image(systemName: "newspaper.fill")
                    Text("동네생활")
                }
                .tag(1)
            
            NeighborhoodMapView()
                .tabItem {
                    Image(systemName: "map.circle")
                    Text("동네지도")
                }
                .tag(2)
            
            ChatView()
                .tabItem {
                    Image(systemName: "ellipsis.message.fill")
                    Text("채팅")
                }
                .tag(3)
            
            UserProileView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("나의당근")
                }
                .tag(4)
            
            
            
        }
        .tint(colorScheme == .light ? .black : .white)
        
    }//: TABVIEW
    
    
    
}

#Preview {
    MainView()
        .environment(\.colorScheme, .dark) // 다크모드
}
