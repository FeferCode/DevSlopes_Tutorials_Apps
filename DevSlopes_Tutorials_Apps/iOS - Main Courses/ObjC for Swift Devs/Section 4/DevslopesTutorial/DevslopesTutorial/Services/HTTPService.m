//
//  HTTPService.m
//  DevslopesTutorial
//
//  Created by Jakub Majewski on 25.08.2017.
//  Copyright © 2017 Jakub Majewski. All rights reserved.
//

#import "HTTPService.h"

@implementation HTTPService

//Singleton - instancja naszej klasy
//
+(id)instance {
    static HTTPService *sharedInstance = nil;
    
    //Działa z wieloma wątkami
    @synchronized (self) {
        if (sharedInstance == nil) {
            sharedInstance = [[self alloc]init];
        }
    }
    
    return sharedInstance;
}

@end
