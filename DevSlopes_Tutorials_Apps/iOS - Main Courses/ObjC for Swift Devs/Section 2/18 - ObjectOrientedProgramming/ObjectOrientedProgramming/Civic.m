//
//  Civic.m
//  ObjectOrientedProgramming
//
//  Created by Jakub Majewski on 23.08.2017.
//  Copyright © 2017 Jakub Majewski. All rights reserved.
//

#import "Civic.h"

@implementation Civic

-(id)init {
    if (self = [super init]){
        
    }
    
    //wywołuje swoją metode
    [self drive];
    return self;
}

-(void)test {
    self.make = @"Honda";
    self.model = @"Civic";
    
    [self drive];
    
    
}

//override
-(void)drive {
    NSLog(@"Drive from subclass");
    
    //wywołuje metodę z kategorii (rozszerzenia)
    [super drive];
}

@end
