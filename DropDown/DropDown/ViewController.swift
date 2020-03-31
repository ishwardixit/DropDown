//
//  ViewController.swift
//  DropDown
//
//  Created by Iswhwar Chand Dixit on 31/03/20.
//  Copyright © 2020 Iswhwar Chand Dixit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var allbutton: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func somePressedAction(_ sender: Any) {
    
        allbutton.forEach { (button) in
            UIView.animate(withDuration: 0.5) {
                button.isHidden.toggle()
                self.view.layoutIfNeeded()
            }
        }
    }
    
}

