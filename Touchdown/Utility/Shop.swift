//
//  Shop.swift
//  Touchdown
//
//  Created by Nahyun on 2023/04/24.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
