//
//  ViewController.m
//  navigationDemo
//
//  Created by apple on 16/8/5.
//  Copyright © 2016年 owen. All rights reserved.
//

#import "ViewController.h"
#import "AllViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
    
     self.title = @"第一个页面";

    [self addButton];
}


-(void)addButton
{
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(self.view.bounds.size.width/2-50, 100, 100, 30)];
    btn.backgroundColor = [UIColor whiteColor];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn setTitle:@"请点击" forState:UIControlStateNormal];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
}


-(void)push
{
    AllViewController *allVC = [[AllViewController alloc]init];
    [self.navigationController pushViewController:allVC animated:YES];
}


@end
