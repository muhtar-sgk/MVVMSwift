//
//  ItemModel.swift
//  MVVMSwift
//
//  Created by Muhtar on 10/07/23.
//

import Foundation

struct Item: Identifiable, Codable {
    var id = UUID()
    var name: String
    var description: String
    
    static var exampleItem = Item(name: "Xbox", description: "Sample description")
}
