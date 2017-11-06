//
//  ViewController.m
//  Categories
//
//  Created by Jakub Majewski on 24.08.2017.
//  Copyright © 2017 Jakub Majewski. All rights reserved.
//

#import "ViewController.h"
#import "Honda.h"
#import "Honda+SupedUp.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Honda *honda = [[Honda alloc]init];
    
    //Wywołuje funkcje/metodę z Honda+SupedUp
    [honda addUglySpoiler];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
