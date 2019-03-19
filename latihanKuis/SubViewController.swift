//
//  SubViewController.swift
//  latihanKuis
//
//  Created by prk on 19/03/19.
//  Copyright © 2019 prk. All rights reserved.
//

import UIKit

class SubViewController: UIViewController {

    @IBOutlet weak var txtNama: UILabel!
    @IBOutlet weak var txtHarga: UILabel!
    @IBOutlet weak var txtStock: UILabel!
    @IBOutlet weak var imgProduct: UIImageView!
    
    var data:Product?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtNama.text = data?.nama
        txtHarga.text = "\(data!.harga)"
        txtStock.text = "\(data!.stock)"
        imgProduct.image = UIImage(named: data!.gambar)
    }
    
    @IBAction func itemClicked(_ sender: Any) {
        performSegue(withIdentifier: "segueBuy", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueBuy" {
            let destination = segue.destination as? BuyViewController
            destination?.data = data
        }
    }
}
