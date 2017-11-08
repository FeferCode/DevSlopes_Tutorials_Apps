//
//  ItemCell.swift
//  DreamLister
//
//  Created by Jakub Majewski on 08.11.2017.
//  Copyright © 2017 Jakub Majewski. All rights reserved.
//

import UIKit

class ItemCell: UITableViewCell {

    @IBOutlet weak var thumb: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var details: UILabel!
    
    func configureCell(item: Item){
        self.title.text = item.title
        self.price.text = "$ \(item.price)"
        self.details.text = item.details
    }

}
