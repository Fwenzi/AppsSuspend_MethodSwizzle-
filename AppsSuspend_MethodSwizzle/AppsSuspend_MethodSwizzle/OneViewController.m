//
//  OneViewController.m
//  AppsSuspend_MethodSwizzle
//
//  Created by 方静雯 on 2018/4/14.
//  Copyright © 2018年 WenZiCyan. All rights reserved.
//

#import "OneViewController.h"
#import "TwoViewController.h"

#define RemoveButton_ScreenWidth [[UIScreen mainScreen] bounds].size.width
#define RemoveButton_ScreenHeight [[UIScreen mainScreen] bounds].size.height

@interface OneViewController ()

@end

@implementation OneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
    [self createBtn];
    [self createTextField];
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

-(void)createTextField{
    UITextField *textField = [UITextField new];
    textField.frame = CGRectMake(50, 100, 200, 40);
    textField.placeholder = @"随意";
    textField.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:textField];
}

-(void)nextBtnclick{
    TwoViewController *vc = [[TwoViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
