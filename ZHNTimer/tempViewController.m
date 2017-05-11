//
//  tempViewController.m
//  ZHNTimer
//
//  Created by zhn on 2017/5/11.
//  Copyright © 2017年 zhn. All rights reserved.
//

#import "tempViewController.h"
#import "ViewController.h"
@interface tempViewController ()

@end

@implementation tempViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *pushButton = [[UIButton alloc]init];
    [pushButton setTitle:@"跳转" forState:UIControlStateNormal];
    [pushButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [pushButton addTarget:self action:@selector(pushAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pushButton];
    pushButton.frame = CGRectMake(100, 100, 100, 100);
}

- (void)pushAction {
    [self.navigationController pushViewController:[[ViewController alloc]init] animated:YES];
}

@end
