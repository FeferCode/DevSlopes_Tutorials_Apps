//
//  ViewController.m
//  MyObjCApp
//
//  Created by Jakub Majewski on 24.08.2017.
//  Copyright © 2017 Jakub Majewski. All rights reserved.
//

#import "ViewController.h"
#import "MyObjCApp-Swift.h"     //This give me access to all swift class in project

@interface ViewController ()
@property(nonatomic,strong) SecondVC *secondVC; //This is second VC in swift, not in ObjC
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)loadSecondVC:(id)sender {
    _secondVC = [[SecondVC alloc]init];
    _secondVC.view.backgroundColor = [UIColor purpleColor];
    [self presentViewController:_secondVC animated:YES completion:nil];
    
}

@end
