//
//  People.h
//  WXQNSCoding_Runtime
//
//  Created by WXQ on 2018/8/3.
//  Copyright © 2018年 JingBei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObject+Runtime.h"

@interface People : NSObject<NSCoding>
//需要归档的属性
@property(nonatomic,copy)NSString * time;
@property(nonatomic,copy)NSArray * dataArray;
@end
