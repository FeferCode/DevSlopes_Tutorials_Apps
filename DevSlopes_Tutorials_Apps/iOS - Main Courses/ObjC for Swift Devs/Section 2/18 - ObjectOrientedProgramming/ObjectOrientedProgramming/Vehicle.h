//
//  Vehicle.h
//  ObjectOrientedProgramming
//
//  Created by Jakub Majewski on 23.08.2017.
//  Copyright © 2017 Jakub Majewski. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Vehicle : NSObject

//Public avalible properties
@property (nonatomic,strong) NSString *make;
@property (nonatomic,strong) NSString *model;
@property (nonatomic,strong) NSString *engineSize;

-(void)drive;

@end
