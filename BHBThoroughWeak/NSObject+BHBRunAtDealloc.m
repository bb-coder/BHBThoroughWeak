//
//  NSObject+BHBRunAtDealloc.m
//  BHBThoroughWeak
//
//  Created by bihongbo on 16/3/1.
//  Copyright © 2016年 bihongbo. All rights reserved.
//

#import "NSObject+BHBRunAtDealloc.h"

@implementation NSObject (BHBRunAtDealloc)

- (void)bhb_runAtDealloc:(voidBlock)block{
    
    if (block) {
        BHBBlockExecutor * executor = [[BHBBlockExecutor alloc] initWithBlock:block];
        
        objc_setAssociatedObject(self, runAtDeallocBlockKey, executor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    
}

@end
