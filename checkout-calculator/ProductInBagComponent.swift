//
//  ProductInBag.swift
//  checkout-calculator
//
//  Created by Azamat Khamidov on 2022-10-19.
//

import SwiftUI

struct ProductInBagComponent: View {
    @EnvironmentObject var bagManager: BagManager
    var product: Product
    
    var body: some View {
        HStack(spacing: 20) {
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50)
            
            VStack(alignment: .leading, spacing: 10) {
                Text(product.name)
                    .bold()
                
                Text("$" + String(product.price))
            }
            Spacer()
            
            Image(systemName: "trash")
                .onTapGesture {
                    bagManager.removeFromBag(productToRemove: product)
                }
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct ProductInBag_Previews: PreviewProvider {
    static var previews: some View {
        ProductInBagComponent(product: productArray[0]).environmentObject(BagManager())
    }
}
