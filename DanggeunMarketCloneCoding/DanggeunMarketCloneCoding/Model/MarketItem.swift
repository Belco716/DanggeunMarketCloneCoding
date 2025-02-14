//
//  MarketItem.swift
//  DanggeunMarketCloneCoding
//
//  Created by 김진혁 on 2/13/25.
//

import Foundation
import SwiftUI

struct MarketItem: Identifiable {
    let id: String = UUID().uuidString
    let image: UIImage?
    let title: String
    let location: String
    let time: String
    let price: String
    
    
    // TODO: 댓글, 좋아요 등 서버 추가하면 모델 추가해서 구현
    
}
