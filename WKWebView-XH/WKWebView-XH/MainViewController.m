//
//  MainViewController.m
//  Sample
//
//  Created by intern08 on 12/12/16.
//  Copyright © 2016 DZN Labs. All rights reserved.
//

#import "MainViewController.h"
#import "ViewController.h"
#import "AppDelegate.h"
#import "MyNavigationController.h"


@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(60, 180, 200, 200)];
    button.backgroundColor = [UIColor blueColor];
    //button.titleLabel.text没用
    //button.titleLabel.text = @"go";
    [button setTitle: @"go" forState: UIControlStateNormal];
    [button addTarget:self action:@selector(go) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)go {
//    NSString* twitter2 = @"https://baidu.com";
    NSString* twitter2 = @"https://twitter.com/search?q=video&src=typd";
//    RxWebViewController *controller = [[RxWebViewController alloc] initWithUrl:[NSURL URLWithString:twitter2]];
    ViewController *controller = [[ViewController alloc]init];
    AppDelegate *app = (AppDelegate *)[[UIApplication  sharedApplication] delegate];
    [app.navController pushViewController:controller animated:YES];
}

@end
