//
//  FirstViewController.m
//  PushAndBlockDemo
//
//  Created by 鲍俊楠 on 15/9/4.
//  Copyright (c) 2015年 Bao. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"
@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 100, 100, 100);
    btn.backgroundColor = [UIColor redColor];
    
    
    [btn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    self.view.backgroundColor = [UIColor greenColor];
    
}

- (void)btnAction {
    SecondViewController *secondView = [[SecondViewController alloc] init];
    UINavigationController *navi = [[UINavigationController alloc] initWithRootViewController:secondView];
    
    MainViewController *mainBlock = secondView;
    
    
    
//    [self.navigationController pushViewController:secondView animated:YES];
    [self presentViewController:navi animated:YES completion:nil];
    

    secondView.loginSuccess = ^(NSString *str1) {
    
//        [mainBlock.navigationController popViewControllerAnimated:YES];
        [mainBlock dismissViewControllerAnimated:YES completion:nil];
    };

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
