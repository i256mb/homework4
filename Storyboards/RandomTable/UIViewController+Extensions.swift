//
//  PopupShow.swift
//  Storyboards
//
//  Created by Евгений Юров on 19.04.2019.
//  Copyright © 2019 Максим Витовицкий. All rights reserved.
//

import UIKit

extension UIViewController{
    static func instance() -> UIViewController{
        let name = String(describing: self)
        let storyboard = UIStoryboard(name: name, bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: name)
        return viewController
    }
}
