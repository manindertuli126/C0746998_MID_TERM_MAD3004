//
//  main.swift
//  C0746998_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-02-20.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

var product1 = Product(productID: "P001", productName: "Hard Drive", price: 120.00)
var product2 = Product(productID: "P002", productName: "ZIP drive", price: 90.00)
var product3 = Product(productID: "P003", productName: "Floppy disk", price: 50.00)
var product4 = Product(productID: "P004", productName: "Monitor", price: 300.00)
var product5 = Product(productID: "P005", productName: "iPhone 7 Plus", price: 1200.00)

var totalProducts = [product1,product2,product3,product4,product5]
for P in totalProducts{
    P.displayData()
}

print("*****")

var order1 = Order(orderID: 111, productArray: [product1,product2,product3])
order1.displayData()
var order2 = Order(orderID: 222, productArray: [product3,product2,product5])
order2.displayData()
var order3 = Order(orderID: 333, productArray: [product5,product2,product3,product4])
order3.displayData()

print("*****")

var order = Order()
order.getKeyAndValue(orderID: order1.orderID, productList: order1.productArray)
order.getKeyAndValue(orderID: order2.orderID, productList: order2.productArray)
order.getKeyAndValue(orderID: order3.orderID, productList: order3.productArray)
order.displayOrderDictionary()

print("*****")
