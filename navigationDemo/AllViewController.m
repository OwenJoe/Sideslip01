//
//  AllViewController.m
//  navigationDemo
//
//  Created by apple on 16/8/5.
//  Copyright © 2016年 owen. All rights reserved.
//

#import "AllViewController.h"

@interface AllViewController ()

@end

@implementation AllViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor magentaColor];
    // Do any additional setup after loading the view.
    
    self.title = @"第二个页面";
    [self addButton];
    //设置代理
    self.navigationController.interactivePopGestureRecognizer.delegate =(id)self;
    
    //启用系统自带的滑动手势
    self.navigationController.interactivePopGestureRecognizer.enabled = YES;
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"自定义返回按钮" style:UIBarButtonItemStyleDone target:self action:@selector(backMethod)];
}

-(void)backMethod{

    [self.navigationController popViewControllerAnimated:YES];
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
