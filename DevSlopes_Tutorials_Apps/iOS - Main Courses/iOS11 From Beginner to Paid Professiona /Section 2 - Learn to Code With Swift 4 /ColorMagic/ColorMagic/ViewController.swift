//
//  ViewController.swift
//  ColorMagic
//
//  Created by Jakub Majewski on 24.09.2017.
//  Copyright © 2017 Jakub Majewski. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ColorTransferDelegate {

    @IBOutlet weak var pickedColor: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func userDidChoose(color: UIColor, withName colorName: String) {
        self.view.backgroundColor = color
        self.pickedColor.text = colorName
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "presentColorPickerVC" {
            guard let colorPickerVC = segue.destination as? PickColorViewController else { return }
            colorPickerVC.delegate = self
        }
    }

    
}

