//
//  Order.swift
//  C0746998_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-02-20.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class Order : iDisplay{
    
    var orderID : Int!
    var orderDate = Date()
    var productArray = [Product]()
    var orderTotal : Double!
    var orderDictionary = Dictionary<Int, String>()
    
    init(){
        
    }
    
    init(orderID:Int, productArray : [Product]) {
        self.orderID = orderID
        self.productArray = productArray
        var total = 0.0
        for k in 0..<productArray.count{
            total += productArray[k].price
        }
        self.orderTotal = total
    }
    
    func displayData() {
        print("Order ID: \(orderID!)")
        print("Order Date: \(orderDate)")
        for j in 0..<productArray.count{
            print("Product: \(productArray[j].productName)")
        }
        print("Order Total: \(orderTotal!.currency())\n")
    }
    
    func getKeyAndValue(orderID:Int, productList:[Product]){
        var addProductList = String()
        for j in 0..<productList.count{
            addProductList += productList[j].productName+", "
        }
        self.orderDictionary.updateValue(addProductList, forKey: orderID)
    }
    
    func displayOrderDictionary() {
        for (k,v) in orderDictionary{
            print("Dictionary Key: \(k), Value: \(v)")
        }
        print("\n")
    }
    
    func getOrderById(orderID: Int){
        print("List of products under order Id \(orderID) are following - \n\(orderDictionary[orderID]!)\n")
    }

}
