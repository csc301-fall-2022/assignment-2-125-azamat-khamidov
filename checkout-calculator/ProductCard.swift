//
//  ProductCard.swift
//  checkout-calculator
//
//  Created by Azamat Khamidov on 2022-10-19.
//

import SwiftUI

struct ProductCard: View {
    var product: Product
    var body: some View {
        VStack(alignment: .center, spacing: 7) {
            Image(product.image)
                .resizable()
                .scaledToFit()
                .frame(width: 130)
            
            VStack(alignment: .center, spacing: 5) {
                
                Text(product.name)
                    .bold()
                    .font(.callout)
                
                Text("$" + String(product.price))
                    .font(.callout)
            }
            
            Button {
                print("Added to cart!")
            } label: {
                Image(systemName: "plus")
                    .padding(8)
                    .foregroundColor(.white)
                    .background(.black)
                    .cornerRadius(50)
            }
        }
    }
}
struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(product: productArray[0])
    }
}
