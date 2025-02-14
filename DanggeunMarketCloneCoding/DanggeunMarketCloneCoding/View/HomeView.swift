//
//  ContentView.swift
//  DanggeunMarketCloneCoding
//
//  Created by 김진혁 on 2/13/25.
//

import SwiftUI

struct HomeView: View {
    
    @Environment(\.colorScheme) var colorScheme // 라이트 모드 색상 || 다크모드 색상
    @StateObject var homeVM: HomeViewModel = HomeViewModel()
    @State private var scrollOffset: CGFloat = 0.0 // 현재 스크롤 위치 저장
    @State private var hasScrolled: Bool = false // 스크롤 여부 감지 변수
    
    var body: some View {
        NavigationStack {
            
            ZStack {
                Color.basic.edgesIgnoringSafeArea(.top)
                
                ScrollView {
                    VStack(alignment: .leading) {
                        
                        Section {
                            
                            HStack(spacing: 10) {
                                
                                
                                Button {
                                    
                                } label: {
                                    HomeHeaderButtonComponent(image: "house.fill", title: "부동산")
                                }
                                
                                Button {
                                    
                                } label: {
                                    HomeHeaderButtonComponent(image: "person.crop.badge.magnifyingglass", title: "알바")
                                }
                                
                                Button {
                                    
                                } label: {
                                    HomeHeaderButtonComponent(image: "car.fill", title: "중고차")
                                }
                                
                            }//: HSTACK ⭐️ 헤더 부분에 넣으면 값이 고정되어 나타나서, 헤더 부분을 따로 배치함.
                            .padding(.top)
                            .padding(.leading)
                            .foregroundStyle(.white)
                            
                            
                            
                            // content
                            ForEach(homeVM.marketItem) { item in
                                HStack {
                                    if let uiImage = item.image {
                                        Image(uiImage: uiImage) // ✅ UIImage → SwiftUI Image 변환
                                            .resizable()
                                            .frame(width: 100, height: 100)
                                            .cornerRadius(10)
                                    } else {
                                        Color.gray.opacity(0.3) // 이미지가 없을 때
                                            .frame(width: 100, height: 100)
                                            .cornerRadius(10)
                                    }
                                    
                                    VStack(alignment: .leading, spacing: 4) {
                                        Text(item.title)
                                            .font(.body)
                                            .foregroundColor(.white)
                                        
                                        HStack {
                                            Text(item.location)
                                                .font(.footnote)
                                                .foregroundColor(.white)
                                            
                                            
                                            Text(item.time)
                                                .font(.footnote)
                                                .foregroundColor(.white)
                                        }//: HSTACK
                                        
                                        
                                        Text(item.price)
                                            .font(.body)
                                            .foregroundColor(.white)
                                        
                                        Spacer()
                                        
                                        
                                    } //:VSTACK
                                    .padding(.top, 8)
                                    
                                    
                                    Spacer()
                                    
                                    
                                    VStack {
                                        Button {
                                            
                                        } label: {
                                            Image(systemName: "ellipsis")
                                                .foregroundColor(.white)
                                        }
                                        .padding()
                                        Spacer()
                                        
                                    }//: VSTACK
                                    
                                    
                                }//: HSTACK
                                .padding()
                                Divider()
                            } //:LOOP
                            
                            
                        }
                        
                        //.listRowBackground(Color.basic)
                        //.listStyle(.plain) // ⭐️ 기본 스타일 제거 (옆 여백 제거)
                    }//: VSTACK
                    .background(GeometryReader { geo -> Color in
                        DispatchQueue.main.async {
                            self.scrollOffset = geo.frame(in: .global).minY
                            if scrollOffset < 100 { // 초기 시작점에서만 에니메이션 미 작동하게
                                hasScrolled = true
                            }
                        }
                        return Color.basic
                    })
                }//: SCROLL
                
                
                .overlay(
                    Button {
                        // Action
                        
                    } label: {
                        
                        HStack(spacing: 4) {
                            
                            Image(systemName: "plus")
                            
                            if Int(scrollOffset) >= 100 {
                                Text("글쓰기")
                            }
                            
                        }//: HSTACK
                        .padding(12)
                        .background(Capsule().fill(.orange))
                        .cornerRadius(20)
                        .foregroundStyle(.white).bold()
                        .animation(hasScrolled ? .easeInOut(duration: 0.3) : nil, value: scrollOffset) // 스크롤 후 애니메이션 작동
                     
                    }
                    .padding()
                    ,alignment: .bottomTrailing // 우측 하단 정렬
                )
                
                
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
                    
                }//: TOOLBAR
            }//: ZSTACK
            
        }//: NAVIGATION
    }
}

#Preview {
    HomeView()
        .environment(\.colorScheme, .dark) // 🦇 다크모드
}

