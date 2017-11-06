//
//  ViewController.h
//  Pointers
//
//  Created by Jakub Majewski on 17.08.2017.
//  Copyright © 2017 Jakub Majewski. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

//* this is pointer, need alocate and init
@property (nonatomic, strong) NSString *name;
//this is regular type
@property (nonatomic) int age;

@property (nonatomic) NSInteger debt;

@property (nonatomic) NSNumber *bankBalance;

@end

