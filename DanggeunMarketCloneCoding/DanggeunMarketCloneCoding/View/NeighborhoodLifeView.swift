//
//  NeighborhoodLifeView.swift
//  DanggeunMarketCloneCoding
//
//  Created by 김진혁 on 2/13/25.
//

import SwiftUI

struct NeighborhoodLifeView: View {
    @StateObject var viewModel = UserViewModel()
    
    
    var body: some View {
        NavigationView {
            List(viewModel.users) { user in
                VStack(alignment: .leading) {
                    Text(user.name).font(.headline)
                    Text(user.email).font(.subheadline)
                }
            }
            .navigationTitle("Users")
            .onAppear {
                viewModel.fetchUsers()
            }
        }
    }
}

#Preview {
    NeighborhoodLifeView()
}
