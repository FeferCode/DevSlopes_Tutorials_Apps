//
//  AllertService.swift
//  Remind
//
//  Created by Jakub Majewski on 07.11.2017.
//  Copyright © 2017 Jakub Majewski. All rights reserved.
//
//  Alert

import Foundation
import UIKit

class AlertService {
    private init(){}
    //Escaping służy do wykonywania kodu po wykonaniu funkcji
    //Funkcja tworzy nam alert na dole ekranu
    static func actionSheet(in vc: UIViewController, title: String, completion: @escaping () -> Void){
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        let action = UIAlertAction(title: title, style: .default) { (_) in
            completion()
        }
        alert.addAction(action)
        vc.present(alert, animated: true)
    }


}
