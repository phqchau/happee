//
//  UIViewController+ViewController.m
//  happee
//
//  Created by Scott Ralston on 2/20/16.
//  Copyright © 2016 Microsoft. All rights reserved.
//

#import "UIViewController+ViewController.h"

@interface UIViewController ()

@end

@implementation UIViewController (ViewController)

- (void)viewDidLoad{
    [super viewDidLoad]
    
    self.view.backgroundColor = [UIColor whitecolor];
    
    UISwipeGestureRecognizer *swipeLeft = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipeRecognized)];
    
    
    
}

@end