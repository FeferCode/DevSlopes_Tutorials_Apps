//
//  Person.h
//  InitStuff
//
//  Created by Jakub Majewski on 24.08.2017.
//  Copyright © 2017 Jakub Majewski. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property(nonatomic, strong) NSString *firstName;
@property(nonatomic, strong) NSString *lastName;

-(id)initWithFirstName:(NSString*)first lastName:(NSString*)last;
-(void)printName;
@end
