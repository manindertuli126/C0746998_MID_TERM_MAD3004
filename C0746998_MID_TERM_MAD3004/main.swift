//
//  main.swift
//  C0746998_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-02-20.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

var product1 = Product(productID: "P001", productName: "Hard Drive", price: 120.00, quantity: 2)
var product2 = Product(productID: "P002", productName: "ZIP drive", price: 90.00, quantity: 1)
var product3 = Product(productID: "P003", productName: "Floppy disk", price: 50.00, quantity: 1)
var product4 = Product(productID: "P004", productName: "Monitor", price: 300.00, quantity: 3)
var product5 = Product(productID: "P005", productName: "iPhone 7 Plus", price: 1200.00, quantity: 1)

var totalProducts = [product1,product2,product3,product4,product5]
for s in totalProducts{
    s.displayData()
}

print("*****")

var order1 = Order(orderID: 111, productArray: [product1,product2,product3])
order1.displayData()
var order2 = Order(orderID: 222, productArray: [product3,product2,product5])
order2.displayData()
var order3 = Order(orderID: 333, productArray: [product5,product2,product3,product4])
order3.displayData()
