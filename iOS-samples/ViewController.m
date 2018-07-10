//
//  ViewController.m
//  iOS-samples
//
//  Created by y.naito on 2018/07/11.
//  Copyright © 2018年 y.naito. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    NSLog(@"viewDidLoad");
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    // ボタンを設定
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(0,60,100,30);
    [button setTitle:@"ボタン" forState:UIControlStateNormal];
    [button setTitle:@"ハイライト" forState:UIControlStateHighlighted];
    [button setTitle:@"無効" forState:UIControlStateDisabled];
    
    [self.view addSubview:button];
}


- (void)didReceiveMemoryWarning {
    NSLog(@"didReceiveMemoryWarning");
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
