//
//  CartButtonModel.swift
//  checkout-calculator
//
//  Created by Azamat Khamidov on 2022-10-19.
//

import SwiftUI

struct BagButtonModel: View {
    var numberOfProductsInBag: Int
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            Image(systemName: "bag")
                .padding(.top, 5)
            
            if numberOfProductsInBag > 0 {
                Text(String(numberOfProductsInBag))
                    .font(.caption2)
                    .bold()
                    .foregroundColor(.white)
                    .frame(width: 10, height: 10)
                    .background(.black)
                    .cornerRadius(50)
            }
        }
    }
}

struct BagButtonModel_Previews: PreviewProvider {
    static var previews: some View {
        BagButtonModel(numberOfProductsInBag: 1)
    }
}
