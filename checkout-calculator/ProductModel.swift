//
//  Product_Model.swift
//  checkout-calculator
//
//  Created by Azamat Khamidov on 2022-10-19.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var price: Int
    var image: String
}

var productArray = [Product(name: "AirPods (2nd gen)", price: 179, image: "airpods_2nd_gen"),
                    Product(name: "AirPods (3rd gen)", price: 229, image: "airpods_3rd_gen"),
                    Product(name: "AirPods Pro", price: 329, image: "airpods_pro_2nd_gen"),
                    Product(name: "AirPods Max", price: 779, image: "airpods_max")]
