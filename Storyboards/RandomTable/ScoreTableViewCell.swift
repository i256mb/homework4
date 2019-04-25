//
//  ColorsTablteViewCell.swift
//  Storyboards
//
//  Created by Евгений Юров on 05.04.2019.
//  Copyright © 2019 Максим Витовицкий. All rights reserved.
//

import UIKit

class ScoreTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
   
    func setup(with name:String){
        nameLabel.text = name
    }
}
