//
//  ViewController.swift
//  DropDownMenu
//
//  Created by Iswhwar Chand Dixit on 30/03/20.
//  Copyright © 2020 Iswhwar Chand Dixit. All rights reserved.
//

import UIKit

class ViewController: UIViewController{

    
    @IBOutlet weak var scrollViewContentView: UIView!
    @IBOutlet var aadharOptiondropDownViews: [UIView]!
    @IBOutlet var numberLabels: [UILabel]!
    
    var colors = [UIColor.red,UIColor.green,UIColor.orange, UIColor.purple ]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        numberLabels.forEach { (label) in
            label.layer.cornerRadius = label.frame.width/2
            label.clipsToBounds = true
        }
        aadharOptiondropDownViews.forEach { (view) in
            
        }
        
    }

    @IBAction func buttonPressed(_ sender: Any) {
    
        self.aadharOptiondropDownViews.forEach { (view) in
             UIView.animate(withDuration: 0.5) {
                view.isHidden.toggle()
                view.layoutIfNeeded()
                self.scrollViewContentView.layoutIfNeeded()
             }
        }
    }
    

}



