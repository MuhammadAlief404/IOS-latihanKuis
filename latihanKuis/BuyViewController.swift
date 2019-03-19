//
//  BuyViewController.swift
//  latihanKuis
//
//  Created by prk on 19/03/19.
//  Copyright © 2019 prk. All rights reserved.
//

import UIKit

class BuyViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var nama: UILabel!
    @IBOutlet weak var harga: UILabel!
    @IBOutlet weak var stock: UILabel!
    @IBOutlet weak var txtQuantity: UITextField!
    @IBOutlet weak var cash: UISegmentedControl!
    
    var data:Product?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        image.image = UIImage(named: data!.gambar)
        nama.text = data!.nama
        harga.text = "\(data!.harga)"
        stock.text = "\(data!.stock)"
    }
    
    @IBAction func buyClicked(_ sender: Any) {
        if txtQuantity.text == "" {
            showAlert(message: "Quantity harus di isi")
        }
        else if (Int(txtQuantity.text!) == nil)
        {
            showAlert(message: "Quantity harus berupa angka")
        }
        else if(Int(txtQuantity.text!)! > data!.stock)
        {
            showAlert(message: "Quantity melebihi jumlah stock")
        }
        else
        {
            var paymentType = cash.titleForSegment(at: cash.selectedSegmentIndex)
            
            var message = "Pembelian Berhasil \n"+"\(txtQuantity.text)\n" + "\(paymentType)"
            
            showAlert(message: message)
        }
    }
    @IBAction func kembali(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func showAlert(message:String)
    {
        let alert = UIAlertController(title: "Alert", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
    }
}
