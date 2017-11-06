//
//  ViewController.h
//  BunkOfJunk
//
//  Created by Jakub Majewski on 24.08.2017.
//  Copyright © 2017 Jakub Majewski. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController



@end

//Property atributes
//Nonatomic - Pozwala na jednoczesne zapisywanie i zmienianie danych przez różne wątki
//Atomic - Nie pozwala na jednoczesne pobieranie i zapisywanie danych przez różne wątki, jest powolny

//Strong - ta zmienna nigdy nie będzie nil chyba, że samemu wskarze się by była nil
//Nie można używać na typach prostych (value type like int), tylko na obiektach
//Weak - ibOutlets powinny być zawsze weak

//Retain - ?, podobne jak strong

//What is retain cycle and how prevent it?
//Do not have 2 strong object pointer to each other
