//
//  ViewController.m
//  LoopsEnumerations
//
//  Created by Jakub Majewski on 23.08.2017.
//  Copyright © 2017 Jakub Majewski. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *cars = @[@"1", @"2", @"3", @"4"];
    
    for (int x = 0; x < cars.count; x++) {
        NSString *car = [cars objectAtIndex:x];
        NSLog(@"Car: %@",car);
    }
    
    for (NSString *car in cars) {
        NSLog(@"Next car: %@", car);
    }
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
