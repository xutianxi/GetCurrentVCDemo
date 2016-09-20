//
//  OneOnePageViewController.m
//  GetCurrentVCDemo
//
//  Created by tianxi xu on 16/9/20.
//  Copyright © 2016年 tianxi xu. All rights reserved.
//

#import "OneOnePageViewController.h"
#import "NSObject+GetVC.h"

#import "OneTwoViewController.h"

@interface OneOnePageViewController ()

@end

@implementation OneOnePageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor redColor];
    
    UIButton *button = [[UIButton alloc] init];
    button.frame = CGRectMake(100, 100, 200, 50);
    [button setTitle:@"Push" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(onClicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)onClicked
{
    NSLog(@"self.parentViewController:%@", self.parentViewController);
    
    OneTwoViewController *VC = [[OneTwoViewController alloc] init];
    
    [self presentViewController:VC animated:YES completion:nil];
    
//    [[self getCurrentVC].navigationController pushViewController:VC animated:YES];
    
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
