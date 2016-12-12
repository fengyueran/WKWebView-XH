//
//  MyNavigationController.m
//  Sample
//
//  Created by intern08 on 12/9/16.
//  Copyright © 2016 DZN Labs. All rights reserved.
//

#import "MyNavigationController.h"

#define UIColorFromHexRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
@interface MyNavigationController ()

@end

@implementation MyNavigationController

- (instancetype)initWithRootViewController:(UIViewController *)controller {
    self = [super initWithRootViewController:controller];
    if (self) {
        self.navigationBar.tintColor = [UIColor whiteColor];
        self.navigationBar.barTintColor = UIColorFromHexRGB(0X151515);
        [self.navigationBar setTitleTextAttributes:@{ NSForegroundColorAttributeName:[UIColor whiteColor]}];
        self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:nil action:nil];
    }
    return self;
}

@end
