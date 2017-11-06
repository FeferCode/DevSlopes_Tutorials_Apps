//
//  ViewController.h
//  Bool
//
//  Created by Jakub Majewski on 22.08.2017.
//  Copyright © 2017 Jakub Majewski. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

//Ze względu na to, że jest to typ wartości może być tylko assign
//Nie może przyjmować wartości weak lub strong
@property(nonatomic) BOOL isItSunny;

@end

