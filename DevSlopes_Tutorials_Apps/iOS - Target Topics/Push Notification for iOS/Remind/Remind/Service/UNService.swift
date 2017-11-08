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
        setupActionsAndCategory()
    }
    
    //
    func setupActionsAndCategory() {
        let timerAction = UNNotificationAction(identifier: NotificationActionID.timer.rawValue,
                                               title: "Run Timer Logic",
                                               options: [.authenticationRequired])
        let dateAction = UNNotificationAction(identifier: NotificationActionID.timer.rawValue,
                                              title: "Run Date Logic",
                                              options: [.destructive])
        let locationAction = UNNotificationAction(identifier: NotificationActionID.timer.rawValue,
                                                  title: "Run Location Logic",
                                                  options: [.foreground])
    
        let timerCategory = UNNotificationCategory(identifier: NotificationCategory.timer.rawValue,
                                                   actions: [timerAction],
                                                   intentIdentifiers: [])
        let dateCategory = UNNotificationCategory(identifier: NotificationCategory.date.rawValue,
                                                  actions: [dateAction],
                                                  intentIdentifiers: [])
        let locationCategory = UNNotificationCategory(identifier: NotificationCategory.location.rawValue,
                                                      actions: [locationAction],
                                                      intentIdentifiers: [])
        
        unCenter.setNotificationCategories([timerCategory,dateCategory,locationCategory])
    }
    
    //This function specifies which graphics will appear
    func getAttachment(for id: NotificationAttachmentID) -> UNNotificationAttachment? {
        var imageName:String
        switch id {
        case .timer: imageName = "TimeAlert"
        case .date: imageName = "DateAlert"
        case .location: imageName = "LocationAlert"
        }
        guard let url = Bundle.main.url(forResource: imageName, withExtension: "png") else {return nil}
        do {
            let attachment = try UNNotificationAttachment(identifier: id.rawValue, url: url)
            return attachment
        } catch {
            return nil
        }
    }
    
    func timerRequest(with interval: TimeInterval){
        //Content that appear in notification
        let content = UNMutableNotificationContent()
        content.title = "Timer finished"
        content.body = "Your Timer is all done"
        content.sound = .default()
        content.badge = 1
        content.categoryIdentifier = NotificationCategory.timer.rawValue
        
        //Image that appear in notification
        if let attachment = getAttachment(for: .timer) {
            content.attachments = [attachment]
        }
        
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
        content.categoryIdentifier = NotificationCategory.date.rawValue
        
        if let attachment = getAttachment(for: .date) {
            content.attachments = [attachment]
        }
        
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
        content.categoryIdentifier = NotificationCategory.location.rawValue
        
        if let attachment = getAttachment(for: .location) {
            content.attachments = [attachment]
        }
        
        let request = UNNotificationRequest(identifier: "userNotification.location", content: content, trigger: nil)
        unCenter.add(request)
    }
}

extension UNService: UNUserNotificationCenterDelegate {
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        print("UN did receive response")
        
        if let action = NotificationActionID(rawValue: response.actionIdentifier) {
            NotificationCenter.default.post(name: NSNotification.Name("internalNotification.handleAction"), object: action)
        }
        
        completionHandler()
    }
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        print("UN WILL present")
        
        let options: UNNotificationPresentationOptions = [.alert, .sound]
        completionHandler(options)
    }
}


