//
//  Person.m
//  BunkOfJunk
//
//  Created by Jakub Majewski on 24.08.2017.
//  Copyright © 2017 Jakub Majewski. All rights reserved.
//

#import "Person.h"
#import "BackPack.h"

@implementation Person

-(void)initData {
    self.backpack = [[BackPack alloc]init];
    self.backpack.owner = self;
}

@end
