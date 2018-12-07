//
//  IQIYITabBarController.m
//  iQIYIDemo
//
//  Created by 王权伟 on 2018/12/6.
//  Copyright © 2018 王权伟. All rights reserved.
//

#import "IQIYITabBarController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FourthViewController.h"
#import "FifthViewController.h"
#import "SecondTabBarController.h"

@interface IQIYITabBarController ()<UITabBarControllerDelegate>

@end

@implementation IQIYITabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.delegate = self;
    
    self.tabBar.translucent = NO;
    
    FirstViewController * firstVC = [[FirstViewController alloc] init];
    UINavigationController * firstNav = [[UINavigationController alloc] initWithRootViewController:firstVC];
    firstNav.tabBarItem.title = @"首页";
    [self addChildViewController:firstNav];
    
    SecondViewController * secondVC = [[SecondViewController alloc] init];
    UINavigationController * secondNav = [[UINavigationController alloc] initWithRootViewController:secondVC];
    secondNav.tabBarItem.title = @"热点";
    [self addChildViewController:secondNav];
    
    ThirdViewController * thirdVC = [[ThirdViewController alloc] init];
    UINavigationController * thirdNav = [[UINavigationController alloc] initWithRootViewController:thirdVC];
    thirdNav.tabBarItem.title = @"会员";
    [self addChildViewController:thirdNav];
    
    FourthViewController * fourthVC = [[FourthViewController alloc] init];
    UINavigationController * fourthNav = [[UINavigationController alloc] initWithRootViewController:fourthVC];
    fourthNav.tabBarItem.title = @"我的";
    [self addChildViewController:fourthNav];
    
    FifthViewController * fifthVC = [[FifthViewController alloc] init];
    UINavigationController * fifthNav = [[UINavigationController alloc] initWithRootViewController:fifthVC];
    fifthNav.tabBarItem.title = @"泡泡";
    [self addChildViewController:fifthNav];
}

- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController {
    
    //4是泡泡页面
    if ([viewController isEqual:[tabBarController.viewControllers objectAtIndex:4]]) {
        
        SecondTabBarController * vc = [[SecondTabBarController alloc] init];
        vc.hidesBottomBarWhenPushed = YES;
        
        UINavigationController * nav = tabBarController.viewControllers[tabBarController.selectedIndex];
        [nav pushViewController:vc animated:YES];
        
//
//        CATransition * ansition = [CATransition animation];
//        [ansition setDuration:0.25f];
//        [ansition setType:kCATransitionMoveIn];
//        [ansition setSubtype:kCATransitionFromRight];
//        [[UIApplication sharedApplication].keyWindow.layer addAnimation:ansition forKey:nil];
//        [self presentViewController:vc animated:NO completion:nil];
        
        return NO;
    }
    
    return YES;
}

@end
