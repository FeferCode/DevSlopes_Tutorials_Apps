//
//  ViewController.m
//  Dictionary
//
//  Created by Jakub Majewski on 23.08.2017.
//  Copyright © 2017 Jakub Majewski. All rights reserved.
//
//
//============================================================
//NSDictionary in ObjC is portable over Dictionary in Swift
//NSDictionary is HashTable, HashSet
//NSDictionary and NSMutableDictionary

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSDictionary *dictTest = @{@"Key": @"Value"};
    
    
    
    NSNumber *age = [NSNumber numberWithInt:40];
    NSNumber *age2 = [NSNumber numberWithInt:34];
    
    NSDictionary *dict = @{@"Jack": age, @"John": age2};
    
    //Sposób pierwszyt, krótrzy
    int jacksAge = [[dict objectForKey:@"Jack"] intValue];
    //Sposób drugi, dłuższy
    NSNumber *age3 = [dict objectForKey:@"Jack"];
    int jacksAge2 = [age3 intValue];
    
    NSLog(@"Jacks age: %d", jacksAge);
    
    //Do not use
//    dict setValue:<#(nullable id)#> forKey:<#(nonnull NSString *)#>
    
    
//    NSMutableDictionary
    NSMutableDictionary *mutDict = [@{@"1": @"BMW", @"2": @"Volvo", @"3": @"Honda"} mutableCopy];
    
    //Najczęstrza wykorzystywana inicjalizacja
    NSMutableDictionary *mutDict2 = [[NSMutableDictionary alloc]init];
    
    [mutDict2 setObject:@"An Obj" forKey:@"Key"];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
