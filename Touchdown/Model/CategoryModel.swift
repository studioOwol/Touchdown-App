//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Nahyun on 2023/04/23.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
