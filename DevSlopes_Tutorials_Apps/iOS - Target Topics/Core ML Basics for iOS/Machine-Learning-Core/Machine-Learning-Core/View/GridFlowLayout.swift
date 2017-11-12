//
//  GridFlowLayout.swift
//  Machine-Learning-Core
//
//  Created by Jakub Majewski on 12.11.2017.
//  Copyright © 2017 Jakub Majewski. All rights reserved.
//
//
//  FlowLayout odpowiada za wygląd collectionView

import UIKit

class GridFlowLayout: UICollectionViewFlowLayout {
    
    override init() {
        super.init()
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    func setup(){
        minimumLineSpacing = 1.0
        minimumInteritemSpacing = 1.0
        scrollDirection = .vertical
        
    }
    
    override var itemSize: CGSize {
        set{}
        get {
            let numberOfColumns:CGFloat = 3
            let itemWidth = ((self.collectionView!.frame.width) - (numberOfColumns - 1)) / numberOfColumns
            return CGSize(width: itemWidth, height: itemWidth)
        }
    }
    
}
