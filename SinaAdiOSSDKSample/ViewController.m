//
//  ViewController.m
//  SinaAdiOSSDKSample
//
//  Created by 晓斌 蓝 on 15/3/25.
//  Copyright (c) 2015年 esina. All rights reserved.
//

#import "ViewController.h"
#import "SAFeedsAdView.h"

@interface ViewController () <SAFeedsAdViewDelegate>

@property (nonatomic, strong) SAFeedsAdView *feedsAD;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //init
    _feedsAD = [[SAFeedsAdView alloc] initWithApprid:@"39"
                                              appkey:@"33efb461b9ad0b0f733a38ce100787a8410620"
                                  rootViewController:self
                                      feedsIconStyle:FeedsIconStyleBlack];
    //set delegate
    _feedsAD.delegate = self;
    //add to view
    [self.view addSubview:_feedsAD];
    
    _feedsAD.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *iconVConstraint = [NSLayoutConstraint constraintWithItem:_feedsAD attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1.0f constant:100.0f];
    NSLayoutConstraint *iconHConstraint = [NSLayoutConstraint constraintWithItem:_feedsAD attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeRight multiplier:1.0f constant:-10.0f];
    NSLayoutConstraint *iconWidthConstraint = [NSLayoutConstraint constraintWithItem:_feedsAD attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0f constant:32.0f];
    NSLayoutConstraint *iconHeightConstraint = [NSLayoutConstraint constraintWithItem:_feedsAD attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0f constant:32.0f];
    
    
    [self.view addConstraint:iconVConstraint];
    [self.view addConstraint:iconHConstraint];
    [self.view addConstraint:iconWidthConstraint];
    [self.view addConstraint:iconHeightConstraint];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
