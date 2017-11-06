//
//  ViewController.swift
//  coder-swag
//
//  Created by Jakub Majewski on 30.09.2017.
//  Copyright © 2017 Jakub Majewski. All rights reserved.
//
//  Protocols and Delegates
//
//  Dane są zabezpieczone
//  Zwracam albo wypełnioną komórkę albo komórkę, która jest pusta
//
//

import UIKit

class CategoriesVC: UIViewController,UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var categoryTable:UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.delegate = self
        categoryTable.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategory().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoriesCell {
            let category = DataService.instance.getCategory()[indexPath.row]
            cell.updateView(category: category)
            return cell
        } else {
            return CategoriesCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategory()[indexPath.row]
        performSegue(withIdentifier: "ProductsCV", sender: category)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productVC = segue.destination as? ProductsVC {
            let barBtn = UIBarButtonItem()
            barBtn.title = " "
            navigationItem.backBarButtonItem = barBtn
            productVC.initProducts(category: sender as! Category)
        }
    }
}

