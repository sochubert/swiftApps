//
//  ViewController.swift
//  HelloWorld
//
//  Created by 무빙키 on 2021/07/30.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lbHello: UILabel!
    @IBOutlet var txtName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btnSend(_ sender: UIButton) {
        lbHello.text = "Hello, " + txtName.text!
    }
}

