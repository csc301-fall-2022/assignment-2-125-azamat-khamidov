//
//  BagManager.swift
//  checkout-calculator
//
//  Created by Azamat Khamidov on 2022-10-19.
//

import Foundation

class BagManager: ObservableObject {
    @Published var products: [Product] = []
    @Published var totalBeforeTaxAndDiscount: Int = 0
    
    func addToBag(product: Product) {
        products.append(product)
        totalBeforeTaxAndDiscount += product.price
    }
    
    func removeFromBag(productToRemove: Product) {
        products = products.filter { $0.id != productToRemove.id }
        totalBeforeTaxAndDiscount -= productToRemove.price
    }
    
    func calculateTax() -> Double {
        return round((Double(totalBeforeTaxAndDiscount) * 0.13) * 100) / 100
    }
    
    func calculateTotal() -> Double {
        return Double(totalBeforeTaxAndDiscount) + calculateTax()
    }
    
}
