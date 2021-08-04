//
//  ViewController.swift
//  imageView2
//
//  Created by 무빙키 on 2021/08/03.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var imageViewer: UIImageView!
    var maxImage = 6
    var numImage = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadImage()
    }
    
    @IBAction func prev(_ sender: Any) {
        numImage = numImage - 1
        if (numImage < 1) {
            numImage = maxImage
        }
        loadImage()
    }
    @IBAction func next(_ sender: Any) {
        numImage = numImage + 1
        if (numImage > maxImage) {
            numImage = 1
        }
        loadImage()
    }
    
    func loadImage() {
        let imageName = String(numImage) + ".png"
        imageViewer.image = UIImage(named:imageName)
    }
}

