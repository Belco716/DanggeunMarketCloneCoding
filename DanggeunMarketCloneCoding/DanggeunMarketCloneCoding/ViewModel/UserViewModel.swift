//
//  UserViewModel.swift
//  DanggeunMarketCloneCoding
//
//  Created by 김진혁 on 2/15/25.
//

import Foundation

class UserViewModel: ObservableObject {
    @Published var users: [User] = []

    func fetchUsers() {
        guard let url = URL(string: "http://localhost:8080/users") else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                do {
                    let decodedData = try JSONDecoder().decode([User].self, from: data)
                    print("decodedData : \(decodedData)")
                    DispatchQueue.main.async {
                        self.users = decodedData
                    }
                } catch {
                    print("Decoding error: \(error)")
                }
            }
        }.resume()
    }
}
