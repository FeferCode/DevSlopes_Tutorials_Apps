//
//  Person.m
//  InitStuff
//
//  Created by Jakub Majewski on 24.08.2017.
//  Copyright © 2017 Jakub Majewski. All rights reserved.
//

#import "Person.h"

@implementation Person

-(id)initWithFirstName:(NSString*)first lastName:(NSString*)last {
    self.firstName = first;
    self.lastName = last;
    
    //Wywołuje swój init
    self = [super init];
    return [self initWithAge:28];
}

//To powoduje, że inicjalizuje z odpowiednimi stałymi danymi
-(id)initWithAge:(NSInteger)age {
    self = [super init];
    return self;
}

-(void)printName {
    NSLog(@"My name is %@ %@", self.firstName, self.lastName);
}

@end
