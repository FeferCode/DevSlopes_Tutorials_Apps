//
//  PickColorViewController.swift
//  ColorMagic
//
//  Created by Jakub Majewski on 24.09.2017.
//  Copyright © 2017 Jakub Majewski. All rights reserved.
//

import UIKit

class PickColorViewController: UIViewController {

    var delegate:ColorTransferDelegate? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func colorButtonPressed(sender: UIButton) {
        if delegate != nil {
            let color = sender.backgroundColor
            let colorName = sender.titleLabel?.text
            
            self.delegate?.userDidChoose(color: color!, withName: colorName!)
            self.navigationController?.popViewController(animated: true)
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
