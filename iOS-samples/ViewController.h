//
//  ViewController.h
//  iOS-samples
//
//  Created by y.naito on 2018/07/11.
//  Copyright © 2018年 y.naito. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>

@interface ViewController : UIViewController <WKNavigationDelegate, WKUIDelegate>
@property (strong) WKWebView *webView;

@end

