//
//  ImageCell.swift
//  Machine-Learning-Core
//
//  Created by Jakub Majewski on 12.11.2017.
//  Copyright © 2017 Jakub Majewski. All rights reserved.
//

import UIKit

class ImageCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView:UIImageView!
    
    func configureCell(_ image:UIImage){
        imageView.image = image
    }
    
    
}
