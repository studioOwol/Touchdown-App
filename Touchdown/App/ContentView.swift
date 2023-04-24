//
//  ContentView.swift
//  Touchdown
//
//  Created by Nahyun on 2023/04/21.
//

import SwiftUI

struct ContentView: View {
    //MARK: - Property
    
    //MARK: - Body
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                // 네비게이션 바가 가려지지 않도록 OS에서 자동으로 정보를 가져옴
                    .padding(.top,
                             UIApplication.shared.windows.first?.safeAreaInsets.top
                    )
                    .padding()
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    VStack(spacing: 0) {
                        FeaturedTabView()
                            .frame(height: UIScreen.main.bounds.width / 1.475)
                            .padding(.vertical, 20)
                        
                        CategoryGridView()
                        
                        TitleView(title: "Helmets")
                        
                        LazyVGrid(columns: gridLayout, spacing: 15, content: {
                            ForEach(products) { product in
                                ProductItemView(product: product)
                            }//: Loop
                        })//: Grid
                        .padding(15)
                        
                        FooterView()
                            .padding(.horizontal)
                    }//: VStack
                })//: Scroll
                
            }//: VStack
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        }//: ZStack
        .ignoresSafeArea(.all, edges: .top)
    }
}

//MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
