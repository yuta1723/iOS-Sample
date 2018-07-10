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
}


- (void)didReceiveMemoryWarning {
    NSLog(@"didReceiveMemoryWarning");
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
