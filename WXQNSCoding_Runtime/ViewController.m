//
//  ViewController.m
//  WXQNSCoding_Runtime
//
//  Created by WXQ on 2018/8/3.
//  Copyright © 2018年 JingBei. All rights reserved.
//

#import "ViewController.h"
#import "People.h"

@interface ViewController ()
@property(nonatomic,copy)NSString * filePath;//存储路径
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    People * p = [[People alloc]init];
    p.time = @"今天";
    p.dataArray = @[@"encode",@"decode"].copy;
    //归档
    [NSKeyedArchiver archiveRootObject:p toFile:self.filePath];
    //解档
    People * people = [NSKeyedUnarchiver unarchiveObjectWithFile:self.filePath];
    NSLog(@"解档:%@,%@",people.time,people.dataArray);
}

- (NSString *)filePath {
    return [[NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:@"file.archiver"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
