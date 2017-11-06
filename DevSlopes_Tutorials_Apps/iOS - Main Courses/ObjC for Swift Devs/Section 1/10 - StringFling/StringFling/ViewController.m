//
//  ViewController.m
//  StringFling
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
    // Do any additional setup after loading the view, typically from a nib.
    
    
    //Literal String
    NSString *firstName = @"John";
    
    //Allocated empty string
    NSString *lastName = [[NSString alloc]init];
    
    //Bad idea
    NSLog(firstName);
    
    //Good idea
    NSLog(@"Name: %@", firstName);
    
    //Plus sign means that is static
    NSString *fullName = [NSString stringWithFormat:@"%@ Smith %@", firstName, @"Charles the III" ];
    
    NSLog(@"Fullname: %@", fullName);
    
    
    NSString *display = [fullName stringByAppendingString:@" - Died in 1448"];
    
    NSLog(@"%@",display);
    
    //Compare strings
    NSString *var1 = @"Junk";
    NSString *var2 = @"";
    NSString *var3 = @"junk";
    
    //It's dangerous, compare objects
    if (var1 != var2) {
        NSLog(@"They are not the same");
    }
    
    //Right way to compare strings in objC
    if (![var1 isEqualToString:var2]) {
        NSLog(@"We should see this!\nThey are not the same");
    }
    //Right way to compare
    if ([var1.lowercaseString isEqualToString:var3] == NSOrderedSame){
        NSLog(@"They are the same!");
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
