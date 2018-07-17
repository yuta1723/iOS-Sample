//
//  SecondViewController.m
//  iOS-samples
//
//  Created by y.naito on 2018/07/18.
//  Copyright © 2018年 y.naito. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    NSLog(@"viewDidLoad");
    
    [self.view setBackgroundColor:UIColor.yellowColor];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(110,60,150,30)];
    label.text = @"Second View";
    [self.view addSubview:label];
    
}

@end

