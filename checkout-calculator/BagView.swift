//
//  BagView.swift
//  checkout-calculator
//
//  Created by Azamat Khamidov on 2022-10-19.
//

import SwiftUI

struct BagView: View {
    @EnvironmentObject var bagManager: BagManager
    
    var body: some View {
        ScrollView {
            if bagManager.products.count > 0 {
                ForEach(bagManager.products, id: \.id) {
                    product in
                    ProductInBagComponent(product: product).environmentObject(bagManager)
                }
                VStack(spacing: 0) {
                    HStack {
                        Text("Your bag subtotal is:")
                        Spacer()
                        Text("$" + String(bagManager.totalBeforeTaxAndDiscount) + ".00")
                    }
                    .padding()
                    HStack {
                        Text("Tax:")
                        Spacer()
                        Text("$" + String(bagManager.calculateTax()))
                    }
                    .padding()
                    HStack {
                        Text("Total:")
                            .bold()
                        Spacer()
                        Text("$" + String(bagManager.calculateTotal()))
                            .bold()
                    }
                    .padding()
                }
            } else {
                Text("Your bag is empty!")
            }
            
        }
        .navigationTitle("My Bag")
        .padding(.top)
    }
}

struct BagView_Previews: PreviewProvider {
    static var previews: some View {
        BagView().environmentObject(BagManager())
    }
}
