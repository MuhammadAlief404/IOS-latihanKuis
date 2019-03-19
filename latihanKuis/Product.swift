//
//  Product.swift
//  latihanKuis
//
//  Created by prk on 19/03/19.
//  Copyright © 2019 prk. All rights reserved.
//

import Foundation

class Product
{
    var nama:String
    var harga:Int
    var stock:Int
    var gambar:String
    
    init(nama:String,harga:Int,stock:Int,gambar:String) {
        self.nama = nama
        self.stock = stock
        self.harga = harga
        self.gambar = gambar
    }
}
