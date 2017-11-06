//
//  Person.h
//  BunkOfJunk
//
//  Created by Jakub Majewski on 24.08.2017.
//  Copyright © 2017 Jakub Majewski. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BackPack;

@interface Person : NSObject
@property (nonatomic, strong) BackPack *backpack;
-(void)initData;
@end
