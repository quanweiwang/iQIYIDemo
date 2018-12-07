//
//  SecondTabBarController.m
//  iQIYIDemo
//
//  Created by 王权伟 on 2018/12/7.
//  Copyright © 2018 王权伟. All rights reserved.
//

#import "SecondTabBarController.h"
#import "SecondLeftViewController.h"
#import "SecondRightViewController.h"

@interface SecondTabBarController ()

@end

@implementation SecondTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.edgesForExtendedLayout = UIRectEdgeAll;
    self.extendedLayoutIncludesOpaqueBars = YES;
    
    SecondLeftViewController * secondLeftViewController = [[SecondLeftViewController alloc] init];
    UINavigationController * secondLeftNav = [[UINavigationController alloc] initWithRootViewController:secondLeftViewController];
    secondLeftNav.tabBarItem.title = @"Left";
    [self addChildViewController:secondLeftNav];
    
    SecondRightViewController * secondRightViewController = [[SecondRightViewController alloc] init];
    UINavigationController * secondRightNav = [[UINavigationController alloc] initWithRootViewController:secondRightViewController];
    secondRightNav.tabBarItem.title = @"Right";
    [self addChildViewController:secondRightNav];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self.navigationController setNavigationBarHidden:YES animated:animated];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    
    [self.navigationController setNavigationBarHidden:NO animated:animated];
}


@end
