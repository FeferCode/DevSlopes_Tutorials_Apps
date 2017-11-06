//
//  Vehicle.m
//  GettersSetters
//
//  Created by Jakub Majewski on 16.08.2017.
//  Copyright © 2017 Jakub Majewski. All rights reserved.
//

#import "Vehicle.h"

@implementation Vehicle

//setter
-(void)setOdometer:(long)odometer {
    if (odometer > _odometer) {
        _odometer = odometer;
    }
}

//getter
-(NSString*)model {
    if ([_model isEqualToString:@"Honda Civic"]) {
        return @"POS";
    } else {
        return _model;
    }
}

//getter


@end
