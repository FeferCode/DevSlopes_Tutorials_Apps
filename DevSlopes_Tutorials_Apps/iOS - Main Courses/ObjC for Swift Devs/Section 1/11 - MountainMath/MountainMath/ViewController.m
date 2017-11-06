//
//  ViewController.m
//  MountainMath
//
//  Created by Jakub Majewski on 17.08.2017.
//  Copyright © 2017 Jakub Majewski. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    int imAnInt = 5;
    float iAmAFloat = 3.3;
    double iAmDouble = 5.666664;
    
    NSLog(@"Int: %d", imAnInt); //d jest dla intów
    NSLog(@"Float: %f", iAmAFloat); // f jest dla floatów
    NSLog(@"Double: %f", iAmDouble); //f jest też dla double
    
    //This is bad idea
    //NSArray *arr = @[imAnInt, iAmAFloat, iAmDouble]
    
    
    //NSNumber - przechowuje wartości liczbowe
    //poprawny zapis tablic
    NSNumber *numInt = [NSNumber numberWithInt:5];
    
    NSNumber *numInt2 = [NSNumber numberWithInt:6];
    
    int val1 = numInt.intValue;
    int val2 = numInt2.intValue;
    
    int sum = val1 + val2;
    
    NSLog(@"Sum: %d", sum);
    
    NSNumber *numSum = [NSNumber numberWithInt:sum];
    
    NSArray *arr = @[numInt, numInt2, numSum];
    
    //this is static string function
    NSString *str = numSum.stringValue;
    
    //Safe style for x86/x64
    //Use when you don't know what
    NSInteger someInt = 55;
    
    //Jak łapać wartiość int i sumować wg. ObjC
    NSNumber *sumNum = [NSNumber numberWithInt:[numInt intValue] * [numInt2 intValue]];
    NSLog(@"sumNum: %@", sumNum);
    
    
    //Store numbers in NSNumbers
    //Operation should be in  native C 
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
