//
//  BHBPerson.m
//  BHBThoroughWeak
//
//  Created by bihongbo on 16/3/1.
//  Copyright © 2016年 bihongbo. All rights reserved.
//

#import "BHBPerson.h"
#import <objc/runtime.h>
#import "NSObject+BHBRunAtDealloc.h"

@implementation BHBPerson

- (void)setCar:(BHBCar *)car{
    
    _car = car;
    
    [car bhb_runAtDealloc:^{
        NSLog(@"car被销毁了");
        _car = nil;
    }];
    
}


@end

