//
//  CategoriesCell.swift
//  coder-swag
//
//  Created by Jakub Majewski on 30.09.2017.
//  Copyright © 2017 Jakub Majewski. All rights reserved.
//

import UIKit

class CategoriesCell: UITableViewCell {

    @IBOutlet weak var categoryImage:UIImageView!
    @IBOutlet weak var categoryLabel:UILabel!
    
    func updateView(category: Category){
        categoryImage.image = UIImage(named: category.imageName)
        categoryLabel.text = category.title
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
