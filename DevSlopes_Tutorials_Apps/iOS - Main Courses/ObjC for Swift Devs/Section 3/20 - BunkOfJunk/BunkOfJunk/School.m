//
//  School.m
//  BunkOfJunk
//
//  Created by Jakub Majewski on 24.08.2017.
//  Copyright © 2017 Jakub Majewski. All rights reserved.
//

#import "School.h"
#import "Person.h"

@implementation School

-(void)initData {
    self.student = [[Person alloc]init];
    [self.student initData];
    
    //When 2 objects have reference to each other
    //I can never relese memory
    //In backpack should have weak reference
    self.student = nil;
    
}

@end
