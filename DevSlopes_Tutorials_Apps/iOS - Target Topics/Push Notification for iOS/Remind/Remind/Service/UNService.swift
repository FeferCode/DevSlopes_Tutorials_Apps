//
//  UNService.swift
//  Remind
//
//  Created by Jakub Majewski on 06.11.2017.
//  Copyright © 2017 Jakub Majewski. All rights reserved.
//
//  UNService is Singleton
//  

import Foundation
import UserNotifications

class UNService: NSObject {
    
    static let shared = UNService()
    private override init(){}
    
    //User notification center
    let unCenter = UNUserNotificationCenter.current()
    
    func authorize() {
        let option: UNAuthorizationOptions = [.alert, .badge, .sound, .carPlay]
        unCenter.requestAuthorization(options: option) { (granted, error) in
            print(error ?? "No UN auth error")
            guard granted else {
                print("USER DENIED ACCESs")
                return
            }
            self.configure()
        }
    }
    
    func configure(){
        unCenter.delegate = self
    }
    
    func timerRequest(with interval: TimeInterval){
        //
        let content = UNMutableNotificationContent()
        content.title = "Timer finished"
        content.body = "Your Timer is all done"
        content.sound = .default()
        content.badge = 1
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: interval, repeats: false)
        let request = UNNotificationRequest(identifier: "userNotification.timer", content: content, trigger: trigger)
        
        unCenter.add(request)
    }
    
    func dateRequest(with components: DateComponents){
        let content = UNMutableNotificationContent()
        content.title = "Date trigger"
        content.body = "It is now the future"
        content.sound = .default()
        content.badge = 1
        
        let trigger = UNCalendarNotificationTrigger(dateMatching: components, repeats: true)
        let request = UNNotificationRequest(identifier: "userNotification.date", content: content, trigger: trigger)
        
        unCenter.add(request)
    }
    
    func locationRequest(){
        let content = UNMutableNotificationContent()
        content.title = "You have returned"
        content.body = "Welcome back"
        content.sound = .default()
        content.badge = 1
        
        let request = UNNotificationRequest(identifier: "userNotification.location", content: content, trigger: nil)
        unCenter.add(request)
    }
}

extension UNService: UNUserNotificationCenterDelegate {
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        print("UN did receive response")
        
        completionHandler()
    }
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        print("UN WILL present")
        
        let options: UNNotificationPresentationOptions = [.alert, .sound]
        completionHandler(options)
    }
}


