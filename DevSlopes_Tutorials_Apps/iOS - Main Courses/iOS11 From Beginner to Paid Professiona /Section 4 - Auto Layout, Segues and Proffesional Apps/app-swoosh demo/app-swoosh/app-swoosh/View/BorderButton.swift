//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Jakub Majewski on 26.09.2017.
//  Copyright © 2017 Jakub Majewski. All rights reserved.
//

import UIKit
@IBDesignable class BorderButton: UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
