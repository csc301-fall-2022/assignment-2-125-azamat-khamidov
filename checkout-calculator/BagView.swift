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
            Text("Your bag is empty!")
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
