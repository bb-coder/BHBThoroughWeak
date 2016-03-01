//
//  BHBPerson.h
//  BHBThoroughWeak
//
//  Created by bihongbo on 16/3/1.
//  Copyright © 2016年 bihongbo. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "BHBCar.h"

@interface BHBPerson : NSObject

@property(nonatomic,assign) BHBCar * car;//实现这个属性的weak

@end
