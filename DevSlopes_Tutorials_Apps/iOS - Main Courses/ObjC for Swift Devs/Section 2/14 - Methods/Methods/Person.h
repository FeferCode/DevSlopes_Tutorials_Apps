//
//  Person.h
//  Methods
//
//  Created by Jakub Majewski on 22.08.2017.
//  Copyright © 2017 Jakub Majewski. All rights reserved.
//


//Plus przed funkcją oznacza, że to funkcja statyczna
//Minus to normalna funkcja, tworzona nowa za każdym razem gdy tworzymy nowy obiekt na podstawie 
#import <Foundation/Foundation.h>

@interface Person : NSObject


- (void)speakName;
+ (void)stateSpacies;

@end
