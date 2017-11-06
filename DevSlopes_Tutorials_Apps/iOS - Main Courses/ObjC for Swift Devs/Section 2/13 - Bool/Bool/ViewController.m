//
//  ViewController.m
//  Bool
//
//  Created by Jakub Majewski on 22.08.2017.
//  Copyright © 2017 Jakub Majewski. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Używać tego BOOL'a, sprawdzić inne
    //Używać YES i NO, zamiast true/false
    //Value Types
    BOOL amICool = YES;
    BOOL isTheOtherPersonCool = NO;
    
    //Przy pojedyńczych liniach nie potrzeba nawiasów {}
    if (amICool)
        NSLog(@"I'm Cool");
    else
        NSLog(@"I'm Not");
    
    
    NSString *name = nil;
    
    //This is how to check is NSString is nil/null
    if (name) {
        NSLog(@"Name: %@", name);
    } else {
        NSLog(@"Name is Nil");
    }
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
