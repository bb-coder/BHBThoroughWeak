//
//  BHBBlockExecutor.h
//  BHBThoroughWeak
//
//  Created by bihongbo on 16/3/1.
//  Copyright © 2016年 bihongbo. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^voidBlock)(void);

@interface BHBBlockExecutor : NSObject

- (id)initWithBlock:(voidBlock)block;

@end
