//
//  SecondRightViewController.m
//  iQIYIDemo
//
//  Created by 王权伟 on 2018/12/7.
//  Copyright © 2018 王权伟. All rights reserved.
//

#import "SecondRightViewController.h"

@interface SecondRightViewController ()

@end

@implementation SecondRightViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor orangeColor];
    
    self.title = @"right";
    
    UIBarButtonItem * leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:(UIBarButtonItemStyleDone) target:self action:@selector(back)];
    
    self.navigationItem.leftBarButtonItem = leftBarButtonItem;
}

- (void)back {
    
    [self.tabBarController.navigationController popViewControllerAnimated:YES];
//    CATransition * ansition = [CATransition animation];
//    [ansition setDuration:0.25f];
//    [ansition setType:kCATransitionMoveIn];
//    [ansition setSubtype:kCATransitionFromLeft];
//    [[UIApplication sharedApplication].keyWindow.layer addAnimation:ansition forKey:nil];
//    [self dismissViewControllerAnimated:NO completion:nil];
}

@end
