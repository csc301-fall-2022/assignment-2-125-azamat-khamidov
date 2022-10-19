//
//  ContentView.swift
//  checkout-calculator
//
//  Created by Azamat Khamidov on 2022-10-19.
//

import SwiftUI

struct ContentView: View {
    @StateObject var bagManager = BagManager()
    var cols = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: cols ,spacing: 20) {
                    ForEach(productArray, id: \.id) { product in
                        ProductCard(product: product)
                            .environmentObject(bagManager)
                    }
                }
                .padding()
            }
            .navigationTitle(Text("AirPods"))
            .toolbar {
                NavigationLink {
                    BagView().environmentObject(bagManager)
                } label: {
                    BagButtonModel(numberOfProductsInBag: bagManager.products.count)
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(BagManager())
    }
}
