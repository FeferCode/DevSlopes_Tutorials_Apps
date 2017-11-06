//
//  Person.h
//  Properties
//
//  Created by Jakub Majewski on 12.08.2017.
//  Copyright © 2017 Jakub Majewski. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    //w nawiasie znajdują się prywatne (Instance Variable)
    BOOL isInsecure;
}

//Propertysy publicznie dostępne w interfejsie Person (properties)
@property (nonatomic, strong) NSString *firstName;
@property (nonatomic, strong) NSString *lastName;

@end
