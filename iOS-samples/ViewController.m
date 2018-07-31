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
    
}


- (void)didReceiveMemoryWarning {
    NSLog(@"didReceiveMemoryWarning");
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// ボタン押された際のセレクター
- (void)onButtonClicked {
    NSLog(@"onButtonClicked");
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"title"
                                                                   message:@"message"
                                                            preferredStyle:UIAlertControllerStyleAlert];
    // UIAlertControllerStyleAlert : 画面中央に表示 (アラート)
    // UIAlertControllerStyleActionSheet 画面下に表示 (アクションシート)
    
    // Cancel用のアクションを生成
    UIAlertAction * cancelAction =
    [UIAlertAction actionWithTitle:@"Cancel"
                             style:UIAlertActionStyleCancel
                           handler:^(UIAlertAction * action) {
                               // ボタンタップ時の処理
                               NSLog(@"Cancel button tapped.");
                           }];
    
    // Destructive用のアクションを生成
    UIAlertAction * destructiveAction =
    [UIAlertAction actionWithTitle:@"Destructive"
                             style:UIAlertActionStyleDestructive
                           handler:^(UIAlertAction * action) {
                               // ボタンタップ時の処理
                               NSLog(@"Destructive button tapped.");
                           }];
    
    // OK用のアクションを生成
    UIAlertAction * okAction =
    [UIAlertAction actionWithTitle:@"OK"
                             style:UIAlertActionStyleDefault
                           handler:^(UIAlertAction * action) {
                               // ボタンタップ時の処理
                               NSLog(@"OK button tapped.");
                           }];
    
    [alert addAction:cancelAction];
    [alert addAction:destructiveAction];
    [alert addAction:okAction];
    
    [self presentViewController:alert animated:YES completion:^{
        NSLog(@"displayed");
    }];
    
}

@end
