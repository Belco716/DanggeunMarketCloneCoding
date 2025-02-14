//
//  HomeHeaderButtonComponent.swift
//  DanggeunMarketCloneCoding
//
//  Created by 김진혁 on 2/14/25.
//

import SwiftUI

struct HomeHeaderButtonComponent: View {
   
    var image: String
    var title: String
    
    
    var body: some View {
        
            
            
            HStack(spacing: 1) {
                
                Image(systemName: image)
                
                Text(title)
                    .backgroundStyle(.basic)
                
            } //:HSTACK
            .padding(12)
            .background(.black)
            .cornerRadius(10)
            
            
            
            
        
    }
}

#Preview {
    HomeHeaderButtonComponent(image: "house.fill", title: "부동산")
        .environment(\.colorScheme, .dark)
    
}
