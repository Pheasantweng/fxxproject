//
//  ViewController.m
//  fxxproject
//
//  Created by  翁献山 on 2018/8/6.
//  Copyright © 2018年  翁献山. All rights reserved.
//

#import "ViewController.h"
#import "LoginView.h"
#import "MainViewModel.h"
@interface ViewController ()
@property (strong,nonatomic)MainViewModel *ViewModel;
@property (strong,nonatomic) WKWebView *webview;
@end

@implementation ViewController
- (void)viewWillAppear:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:YES animated:YES];
    [super viewWillAppear:animated];
}
-(void)viewWillDisappear:(BOOL)animated{
    [self.navigationController setNavigationBarHidden:NO animated:YES];
    [super viewWillDisappear:animated];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self.ViewModel Regisdevicebygame:self];
    [self.view addSubview:self.webview];
    // Do any additional setup after loading the view, typically from a nib.
}
-(WKWebView *)webview{
    if (_webview==nil) {
        _webview = [[WKWebView alloc]initWithFrame:CGRectMake(0, 0, ScreenWidth, ScreenHeight)];
    }
    return _webview;
}
-(MainViewModel *)ViewModel{
    if (_ViewModel==nil) {
        _ViewModel=[[MainViewModel alloc]init];
    }
    return _ViewModel;
}
-(void)request:(NSString *)url{
    [self.webview loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:url]]];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
