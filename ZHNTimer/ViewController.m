//
//  ViewController.m
//  ZHNTimer
//
//  Created by zhn on 2017/5/11.
//  Copyright © 2017年 zhn. All rights reserved.
//

#import "ViewController.h"
#import "ZHNTimer.h"
@interface ViewController ()
@property (nonatomic,strong) ZHNTimer *timer;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.timer = [ZHNTimer zhn_timerWIthTimeInterval:1 repeats:YES queue:dispatch_get_main_queue() handler:^{
        NSLog(@"a");
    }];
    [self.timer fire];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self.timer frozen];
    });
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(8 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self.timer fire];
    });
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
