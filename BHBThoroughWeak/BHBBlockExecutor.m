//
//  BHBBlockExecutor.m
//  BHBThoroughWeak
//
//  Created by bihongbo on 16/3/1.
//  Copyright © 2016年 bihongbo. All rights reserved.
//

#import "BHBBlockExecutor.h"

@interface BHBBlockExecutor ()
{
    voidBlock _block;
}
@end

@implementation BHBBlockExecutor

- (id)initWithBlock:(voidBlock)aBlock
{
    self = [super init];
    
    if (self) {
        _block = [aBlock copy];
    }
    
    return self;
}

- (void)dealloc
{
    _block ? _block() : nil;
}


@end
