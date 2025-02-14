//
//  HomeViewModel.swift
//  DanggeunMarketCloneCoding
//
//  Created by 김진혁 on 2/13/25.
//

import Foundation
import SwiftUI

class HomeViewModel: ObservableObject {
    
    @Published var marketItem: [MarketItem] = []
    
    init() {
        fetchMarket()
    }
    
    func fetchMarket() {
        // FIXME: - 임시 데이터
        let data1 = MarketItem(image: UIImage(named: "aluco-1"), title: "맥미니 팝니다", location: "다산동 2.2km", time: "12분전", price: "12,000원")
        let data2 = MarketItem(image:  UIImage(named: "aluco-2"), title: "맥미니 팝니다2", location: "다산동 2.2km", time: "12분전", price: "12,000원")
        let data3 = MarketItem(image: UIImage(named: "auritus-1"), title: "맥미니 팝니다3", location: "다산동 2.2km", time: "12분전", price: "12,000원")
        let data4 = MarketItem(image: UIImage(named: "auritus-2"), title: "맥미니 팝니다4", location: "다산동 2.2km", time: "12분전", price: "12,000원")
        let data5 = MarketItem(image: UIImage(named: "bear-1"), title: "맥미니 팝니다5", location: "다산동 2.2km", time: "12분전", price: "12,000원")
        let data6 = MarketItem(image: UIImage(named: "bear-2"), title: "맥미니 팝니다6", location: "다산동 2.2km", time: "12분전", price: "12,000원")
        let data7 = MarketItem(image: UIImage(named: "bear-3"), title: "맥미니 팝니다7", location: "다산동 2.2km", time: "12분전", price: "12,000원")
        let data8 = MarketItem(image: UIImage(named: "bear-4"), title: "맥미니 팝니다8", location: "다산동 2.2km", time: "12분전", price: "12,000원")
        let data9 = MarketItem(image: UIImage(named: "bear-5"), title: "맥미니 팝니다9", location: "다산동 2.2km", time: "12분전", price: "12,000원")
        let data10 = MarketItem(image: UIImage(named: "bengalensis-1"), title: "맥미니 팝니다10", location: "다산동 2.2km", time: "12분전", price: "12,000원")
        
        
        marketItem.append(data1)
        marketItem.append(data2)
        marketItem.append(data3)
        marketItem.append(data4)
        marketItem.append(data5)
        marketItem.append(data6)
        marketItem.append(data7)
        marketItem.append(data8)
        marketItem.append(data9)
        marketItem.append(data10)
        marketItem.append(data10)
        marketItem.append(data10)
        
        
        
    }
    
    
    
}
