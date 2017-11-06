//
//  ColorTransferDelegate.swift
//  ColorMagic
//
//  Created by Jakub Majewski on 24.09.2017.
//  Copyright © 2017 Jakub Majewski. All rights reserved.
//

import Foundation
import UIKit

protocol ColorTransferDelegate {
    func userDidChoose(color: UIColor, withName colorName: String)
}
