//
//  SBPopup.swift
//  Storyboards
//
//  Created by Евгений Юров on 19.04.2019.
//  Copyright © 2019 Максим Витовицкий. All rights reserved.
//

import UIKit


class SBPopup: UIViewController {

    var inputText:String?
  
    @IBOutlet weak var lblChange: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblChange.text =  inputText
        
    }
    
}
