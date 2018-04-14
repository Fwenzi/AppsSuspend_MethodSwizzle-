//
//  ViewController.m
//  AppsSuspend_MethodSwizzle
//
//  Created by 方静雯 on 2018/4/14.
//  Copyright © 2018年 WenZiCyan. All rights reserved.
//

#import "ViewController.h"
#import "OneViewController.h"

#define RemoveButton_ScreenWidth [[UIScreen mainScreen] bounds].size.width
#define RemoveButton_ScreenHeight [[UIScreen mainScreen] bounds].size.height

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self createBtn];
}

-(void)createBtn{
    UIButton *btn = [UIButton new];
    btn.frame = CGRectMake(0, 0, 150, 50);
    btn.center = self.view.center;
    [btn setTitle:@"下一页" forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor blueColor]];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(nextBtnclick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

-(void)nextBtnclick{
    OneViewController *vc = [[OneViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
