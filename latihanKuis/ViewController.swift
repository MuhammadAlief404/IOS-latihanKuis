//
//  ViewController.swift
//  latihanKuis
//
//  Created by prk on 19/03/19.
//  Copyright © 2019 prk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var productHp = Product(nama: "Smartphone", harga: 500, stock: 5, gambar: "handphone")
    var productLaptop = Product(nama: "Laptop", harga: 700, stock: 10, gambar: "laptop")
    var productCamera = Product(nama: "Camera", harga: 600, stock: 7, gambar: "Camera")

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "camera"
        {
            let destination = segue.destination as? SubViewController
            destination?.data = productCamera
        }
        else if segue.identifier == "hp"
        {
            let destination = segue.destination as? SubViewController
            destination?.data = productHp
        }
        else if segue.identifier == "laptop"
        {
            let destination = segue.destination as? SubViewController
            destination?.data = productLaptop
        }
    }


}

