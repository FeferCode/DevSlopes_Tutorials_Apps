//
//  ViewController.m
//  InitStuff
//
//  Created by Jakub Majewski on 24.08.2017.
//  Copyright © 2017 Jakub Majewski. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //Tu można napisać swoje alloc i init
    Person *person = [[Person alloc]init];
    //Wzywa tylko default alloc i init
    Person *person2 = [Person new];
    
    //Null bo nie zainicjalizowane są propertisy
    [person printName];
    
    //Podaje moje imię i nazwisko bo inicjalizuje z danymi
    //Designate initializer
    Person *person3 = [[Person alloc]initWithFirstName:@"Jakub" lastName:@"Majewski"];
    
    
    [person3 printName];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
