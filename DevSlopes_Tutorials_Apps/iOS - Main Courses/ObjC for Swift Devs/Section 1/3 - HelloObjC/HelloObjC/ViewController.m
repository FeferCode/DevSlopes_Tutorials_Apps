//
//  ViewController.m
//  HelloObjC
//
//  Created by Jakub Majewski on 12.08.2017.
//  Copyright © 2017 Jakub Majewski. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

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

- (IBAction)clickBait:(id)sender {
    //definiuje alert
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"WELCOME" message:@"Welcome to the world of ObjC" preferredStyle: UIAlertControllerStyleAlert];
    
    //definiuje akcje zamykania na alercie
    UIAlertAction *closeAction = [UIAlertAction actionWithTitle:@"CLOSE" style:UIAlertActionStyleCancel handler:nil];
    
    //dodaje akcje zamykania
    [alert addAction:closeAction];
    
    [self presentViewController:alert animated:YES completion:nil];
}

@end
