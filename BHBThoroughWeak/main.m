//
//  main.m
//  BHBThoroughWeak
//
//  Created by bihongbo on 16/3/1.
//  Copyright © 2016年 bihongbo. All rights reserved.
//

//手动实现weak属性

#import <Foundation/Foundation.h>
#import "BHBPerson.h"
#import "BHBCar.h"

int main(int argc, const char * argv[]) {
    for (int i; i < 1000; i ++) {
        BHBCar * car = [[BHBCar alloc] init];
        NSLog(@"%@ retainCount:%ld",car,[car retainCount]);
        BHBPerson * person = [[BHBPerson alloc] init];
        NSLog(@"%@ retainCount:%ld",person,[person retainCount]);
        person.car = car;
        NSLog(@"%@ retainCount:%ld",car,[car retainCount]);
        [car release];
        NSLog(@"%@ retainCount:%ld",car,[car retainCount]);
        person.car.name = @"lex";
        [person release];
    }
    return 0;
}
