//
//  User.swift
//  DanggeunMarketCloneCoding
//
//  Created by 김진혁 on 2/15/25.
//

import Foundation

struct User: Codable, Identifiable {
    var id: UUID
    var name: String
    var email: String
}
