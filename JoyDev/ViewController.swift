//
//  ViewController.swift
//  JoyDev
//
//  Created by Kitsune on 24.11.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var TypeFox: UILabel!
    
    @IBOutlet weak var Fox1: UIButton!
    
    @IBOutlet weak var Fox2: UIButton!
    
    @IBOutlet weak var Fox3: UIButton!
    
    @IBOutlet weak var Api: UIButton!
    
    @IBAction func moreBtn(_ sender: Any) {
        moreLabel.numberOfLines = 5    }
    
    @IBOutlet weak var moreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TypeFox.alpha = 0
        Fox1.alpha = 0
        Fox2.alpha = 0
        Fox3.alpha = 0
        Api.alpha = 0

        UIView.animate(withDuration: 1) {
            self.TypeFox.alpha = 1
        } completion: { (_) in
            UIView.animate(withDuration: 1){
                self.Fox1.alpha = 1
                self.Fox2.alpha = 1
                self.Fox3.alpha = 1
                self.Api.alpha = 1
            }
    }
    }
        
}
