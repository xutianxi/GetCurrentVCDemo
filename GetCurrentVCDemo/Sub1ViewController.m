//
//  Sub1ViewController.m
//  GetCurrentVCDemo
//
//  Created by tianxi xu on 16/9/20.
//  Copyright © 2016年 tianxi xu. All rights reserved.
//

#import "Sub1ViewController.h"
#import "OneOnePageViewController.h"
#import "OneTwoViewController.h"

@interface Sub1ViewController ()

@end

@implementation Sub1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"Sub1VC";
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *button = [[UIButton alloc] init];
    button.backgroundColor = [UIColor orangeColor];
    button.frame = CGRectMake(100, 100, 200, 50);
    [button setTitle:@"Push" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(onClicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)onClicked
{
    OneOnePageViewController *VC = [[OneOnePageViewController alloc] init];
//    [self presentViewController:VC animated:YES completion:^{ }];
    [self.navigationController pushViewController:VC animated:YES];
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
