//
//  NSObject+Runtime.h
//  WXQNSCoding_Runtime
//
//  Created by WXQ on 2018/8/3.
//  Copyright © 2018年 JingBei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>

@interface NSObject (Runtime)
- (void)encoder:(NSCoder *)aCoder;
- (void)decoder:(NSCoder *)aDecoder;
@end
