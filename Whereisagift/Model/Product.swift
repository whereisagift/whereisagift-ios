//
//  Product.swift
//  Whereisagift
//
//  Created by Artem Poletaev on 29.07.2025.
//

import Foundation

struct Wish: Identifiable, Codable {
    let id: String
    let name: String
    let description: String
    let img: URL
    let price: Price
    let rate: Double
}

struct Price: Codable {
    let currency: String
    let value: Double
}

extension Bundle {
    func decode<T: Decodable>(_ file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("❌ Failed to locate \(file) in bundle.")
        }
        guard let data = try? Data(contentsOf: url) else {
            fatalError("❌ Failed to load \(file) from bundle.")
        }
        do {
            return try JSONDecoder().decode(T.self, from: data)
        } catch {
            fatalError("❌ Failed to decode \(file) from bundle: \(error)")
        }
    }
}
