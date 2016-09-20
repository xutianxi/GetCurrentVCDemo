//
//  OneTwoViewController.m
//  GetCurrentVCDemo
//
//  Created by tianxi xu on 16/9/20.
//  Copyright © 2016年 tianxi xu. All rights reserved.
//

#import "OneTwoViewController.h"

@interface OneTwoViewController ()

@end

@implementation OneTwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor blueColor];
    self.title = @"OneTwo";
    
    UIButton *button = [[UIButton alloc] init];
    button.frame = CGRectMake(100, 100, 200, 50);
    [button setTitle:@"Close" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(onClicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)onClicked
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
