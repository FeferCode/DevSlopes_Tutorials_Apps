//
//  ViewController.m
//  ClassAnatomy
//
//  Created by Jakub Majewski on 12.08.2017.
//  Copyright © 2017 Jakub Majewski. All rights reserved.
//


//Importowanie headera klasy
#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) NSString *vehicle;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //Null name
    NSLog(@"Name: %@", self.name);
    
    //Jack name
    self.name = @"Jack";
    
    NSLog(@"Name: %@", self.name);
    
    //Peter name
    _name = @"Peter";
    
    NSLog(@"Name: %@", _name);
    
    //Sylvia name
    [self setName:@"Sylvia"];
    
    NSLog(@"Name %@", [self name]);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
