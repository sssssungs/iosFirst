//
//  ViewController.swift
//  MyAlbum
//
//  Created by Randy Won on 2020/03/11.
//  Copyright © 2020 Randy Won. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var currentValue = 0
    
    @IBOutlet weak var priceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.buttonClick(0)
        makeRandom()
    }

    @IBAction func buttonClick(_ sender: Any) {
        let msg = "현재 가격은 \(currentValue) 입니다. 가격을 refresh 합니다"
        let alert = UIAlertController(title: "Hello", message: msg, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: { action in self.makeRandom() })
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
        
//        makeRandom()
                
    }
    
    func makeRandom() {
        let randomPrice = arc4random_uniform(10000) + 1
        currentValue = Int(randomPrice)
        priceLabel.text = "\(currentValue)"
    }

    
}

