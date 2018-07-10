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

int count = 0;
UILabel *countLabel;

- (void)viewDidLoad {
    NSLog(@"viewDidLoad");
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    // テキストを設定
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0,20,100,30)];
    label.text = @"Hello world";
    
    [self.view addSubview:label];
    
    // ボタンを設定
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(0,60,100,30);
    [button setTitle:@"ボタン" forState:UIControlStateNormal];
    [button setTitle:@"ハイライト" forState:UIControlStateHighlighted];
    [button setTitle:@"無効" forState:UIControlStateDisabled];
    
    [button addTarget:self action:@selector(onButtonClicked) forControlEvents:UIControlEventTouchDown];
    
    [self.view addSubview:button];
    
    // クリックカウント用のテキストラベル
    countLabel = [[UILabel alloc] initWithFrame:CGRectMake(110,60,150,30)];
    countLabel.text = [NSString stringWithFormat:@"click count = %d",count];
    [self.view addSubview:countLabel];
    
}


- (void)didReceiveMemoryWarning {
    NSLog(@"didReceiveMemoryWarning");
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// ボタン押された際のセレクター
- (void)onButtonClicked {
    NSLog(@"onButtonClicked");
    
    count++;
    countLabel.text = [NSString stringWithFormat:@"click count = %d",count];
}


@end
