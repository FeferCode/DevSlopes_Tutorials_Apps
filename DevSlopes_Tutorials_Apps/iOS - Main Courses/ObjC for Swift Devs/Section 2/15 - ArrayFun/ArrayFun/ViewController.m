//
//  ViewController.m
//  ArrayFun
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
    
    
    //NSArray is good for init with data
    //You cannot modify data in NSArray
    
    NSArray *arr = [[NSArray alloc]init];
    NSArray *arr2 = [NSArray arrayWithObjects:@"One", @"Two", @"Three", @"Four", nil];
    NSString *str = @"Yay for string";
    
    NSMutableArray *mutArr = [NSMutableArray arrayWithObjects:@"1", @"2", @"3", @"4", nil];
    
    //Remove data from position 3(4)
    [mutArr removeObjectAtIndex:3];
    //Adding data to array in the end of array
    [mutArr addObject:@"5"];
    
    NSLog(@"MutableArray: %@", mutArr.debugDescription);
    
    NSArray *arr3 = [NSArray arrayWithArray:arr];
    NSArray *arr4 = mutArr;
    
    NSMutableArray *mutArr2 = arr;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
