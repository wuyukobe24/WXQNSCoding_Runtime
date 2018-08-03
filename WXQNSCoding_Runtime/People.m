//
//  People.m
//  WXQNSCoding_Runtime
//
//  Created by WXQ on 2018/8/3.
//  Copyright © 2018年 JingBei. All rights reserved.
//

#import "People.h"

@implementation People

#pragma mark - 实现NSCoding的协议方法
- (void)encodeWithCoder:(NSCoder *)aCoder {
    //需要归档的属性
    /**第一种常规方法*/
    //    [aCoder encodeObject:self.time forKey:@"time"];
    //    [aCoder encodeObject:self.dataArray forKey:@"dataArray"];
    /**第二种Runtime方法*/
    [self encoder:aCoder];
    NSLog(@"调用了 encodeWithCoder：");
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    if (self) {
        //解档
        /**第一种常规方法*/
//        self.time = [aDecoder decodeObjectForKey:@"time"];
//        self.dataArray = [aDecoder decodeObjectForKey:@"dataArray"];
        /**第二种Runtime方法*/
        [self decoder:aDecoder];
        NSLog(@"调用了 initWithCoder：");
    }
    return self;
}


@end
