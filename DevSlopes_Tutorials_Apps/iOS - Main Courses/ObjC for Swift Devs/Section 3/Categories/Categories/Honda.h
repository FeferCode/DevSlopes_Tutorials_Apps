//
//  Honda.h
//  Categories
//
//  Created by Jakub Majewski on 24.08.2017.
//  Copyright © 2017 Jakub Majewski. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Honda : NSObject
@property(nonatomic,strong) NSString *model;
@property(nonatomic,strong) NSString *miles;

-(void)increseMilesToOdomer;
-(void)drive;

@end
