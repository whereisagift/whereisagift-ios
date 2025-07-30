//
//  Product.swift
//  Whereisagift
//
//  Created by Artem Poletaev on 29.07.2025.
//

import Foundation

struct Product: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let price: String
}

let products = [
    Product(imageName: "phone", title: "iPhone 16 pro", price: "81990₽"),
    Product(imageName: "pods", title: "Air Pods pro 2", price: "18990₽"),
    Product(imageName: "station", title: "Яндекс станция Стрит", price: "16990₽"),
    Product(imageName: "watch", title: "Apple Watch Ultra 2", price: "82990₽"),
    
]
