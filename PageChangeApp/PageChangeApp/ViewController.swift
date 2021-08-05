//
//  ViewController.swift
//  PageChangeApp
//
//  Created by 무빙키 on 2021/08/05.
//

import UIKit

var array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

class ViewController: UIViewController {
    @IBOutlet var lblView: UILabel!
    @IBOutlet var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pageControl.numberOfPages = array.count
        pageControl.currentPage = 0
        pageControl.pageIndicatorTintColor = UIColor.green
        pageControl.currentPageIndicatorTintColor = UIColor.red
        lblView.text = String(array[0])
    }
    @IBAction func changePage(_ sender: UIPageControl) {
        lblView.text = String(array[pageControl.currentPage])
    }
    

}

