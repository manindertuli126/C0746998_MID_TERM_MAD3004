//
//  Product.swift
//  C0746998_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-02-20.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class Product {
    
    var productID : String
    var productName : String
    var price : Double
    var quantity : Int
    
    init(productID:String, productName:String, price:Double) {
        self.productID = productID
        self.productName = productName
        self.price = price
        self.quantity = 1
    }
    
    func displayData() {
        print("Product ID: \(self.productID)")
        print("Product Name: \(self.productName)")
        print("Product Price: \(self.price)")
        print("Product Quantity: \(self.quantity)\n")
    }
}
