//
//  ContentView.swift
//  checkout-calculator
//
//  Created by Azamat Khamidov on 2022-10-19.
//

import SwiftUI

struct ContentView: View {
    var cols = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: cols ,spacing: 20) {
                    ForEach(productArray, id: \.id) { product in
                        ProductCard(product: product)
                    }
                }
                .padding()
            }
            .navigationTitle(Text("AirPods"))
            .toolbar {
                NavigationLink {
                    BagView()
                } label: {
                    BagButtonModel(numberOfProductsInBag: 1)
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
