//
//  Product.swift
//  Whereisagift
//
//  Created by Artem Poletaev on 29.07.2025.
//

import Foundation

struct Product: Identifiable {
    let id: UUID
    let title: String
    let price: Decimal
    let imageName: String

    init(title: String, price: Decimal, imageName: String) {
        self.id = UUID()
        self.title = title
        self.price = price
        self.imageName = imageName
    }
}
let products = [
    Product(title: "iPhone 16 pro", price: 81990, imageName: "phone"),
    Product(title: "Air Pods pro 2", price: 18990, imageName: "pods"),
    Product(title: "Яндекс станция Станция", price: 16990, imageName: "station"),
    Product(title: "Apple Watch Ultra 2", price: 82990, imageName: "watch"),
]
