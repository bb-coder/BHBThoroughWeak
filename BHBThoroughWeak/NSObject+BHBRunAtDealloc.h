//
//  NSObject+BHBRunAtDealloc.h
//  BHBThoroughWeak
//
//  Created by bihongbo on 16/3/1.
//  Copyright © 2016年 bihongbo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BHBBlockExecutor.h"
#import <objc/runtime.h>


const static void *runAtDeallocBlockKey = &runAtDeallocBlockKey;

@interface NSObject (BHBRunAtDealloc)

- (void)bhb_runAtDealloc:(voidBlock)block;

@end
