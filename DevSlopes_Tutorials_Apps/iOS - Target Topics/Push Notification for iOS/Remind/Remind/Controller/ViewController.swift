//
//  ViewController.swift
//  Remind
//
//  Created by Jakub Majewski on 06.11.2017.
//  Copyright © 2017 Jakub Majewski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UNService.shared.authorize()
        CLService.shared.authorize()
        
        NotificationCenter.default.addObserver(self, selector: #selector(didEnterRegion), name: NSNotification.Name("internalNotification.enteredRegion"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(handleAction(_:)), name: NSNotification.Name("internalNotification.handleAction"), object: nil)
        
    }

    //Good after some actions
    @IBAction func onTimerTapped(){
        print("Timer")
        AlertService.actionSheet(in: self, title: "5 Seconds") {
            UNService.shared.timerRequest(with: 5)
        }
        
    }
    
    //Good for
    @IBAction func onDateTapped(){
        print("Date")
        var components = DateComponents()
        components.second = 0
        AlertService.actionSheet(in: self, title: "Some future time") {
            UNService.shared.dateRequest(with: components)
        }
        
    }
    
    @IBAction func onLocationTapped(){
        AlertService.actionSheet(in: self, title: "When I return") {
            CLService.shared.updateLocation()
        }
    }
    
    @objc func didEnterRegion(){
        UNService.shared.locationRequest()
    }
    
    @objc func handleAction(_ sender:Notification){
        guard let action = sender.object as? NotificationActionID else { return }
        switch action {
        case .timer:
            changeBackground()
            print("timer logic")
        case .date: print("date logic")
        case .location: print("location logic")
        }
    }
    
    func changeBackground() {
        view.backgroundColor = .red
    }
}

