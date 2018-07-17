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
    
    [self.view setBackgroundColor:UIColor.whiteColor];

    // ボタンを設定
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(0,60,100,30);
    [button setTitle:@"ボタン" forState:UIControlStateNormal];
    [button setTitle:@"ハイライト" forState:UIControlStateHighlighted];
    [button setTitle:@"無効" forState:UIControlStateDisabled];
    
    [button addTarget:self action:@selector(onButtonClicked) forControlEvents:UIControlEventTouchDown];
    
    [self.view addSubview:button];
}


- (void)didReceiveMemoryWarning {
    NSLog(@"didReceiveMemoryWarning");
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// ボタン押された際のセレクター
- (void)onButtonClicked {
    NSLog(@"onButtonClicked");
    UIViewController *secontViewController = [[SecondViewController alloc] init];
    
    [self.navigationController pushViewController:secontViewController animated:YES];
    
}


@end
// http://tanihiro.hatenablog.com/entry/2013/12/03/205014
