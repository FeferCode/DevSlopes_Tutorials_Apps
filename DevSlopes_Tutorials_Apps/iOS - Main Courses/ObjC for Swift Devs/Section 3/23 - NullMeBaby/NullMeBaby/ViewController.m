//
//  ViewController.m
//  NullMeBaby
//
//  Created by Jakub Majewski on 24.08.2017.
//  Copyright © 2017 Jakub Majewski. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)getName:(NSString* _Nonnull)name {
    
}

-(int)sum:(nonnull NSNumber*)numA :(nonnull NSNumber*)numB {
    int theSum = numA.intValue + numB.intValue;
    return theSum;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSNumber *num1;
    NSNumber *num2;
    
    [self getName:nil];
    
    int sum = [self sum:num1 :num2];
    NSLog(@"Sum: %d", sum);
    
    //SPrawdzam czy dane nie są nullami
    //Gdybym tego nie zrobił kompilator wyświetliłby 0 nie informując o nullach
//    if (num1 && num2) {
//        int sum = [self sum:num1 :num2];
//        NSLog(@"Sum: %d", sum);
//    } else {
//        NSLog(@"They are null");
//    }
    
    
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
