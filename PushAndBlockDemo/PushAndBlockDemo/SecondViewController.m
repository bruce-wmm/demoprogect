//
//  SecondViewController.m
//  
//
//  Created by 鲍俊楠 on 15/9/4.
//
//

#import "SecondViewController.h"
#import "ThirdViewController.h"
@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 100, 100, 100);
    btn.backgroundColor = [UIColor purpleColor];
    
    [btn addTarget:self action:@selector(popAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    self.view.backgroundColor = [UIColor blueColor];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 300, 100, 100);
    button.backgroundColor = [UIColor cyanColor];
    
    [button addTarget:self action:@selector(PushAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    self.view.backgroundColor = [UIColor blueColor];
    
}

- (void)PushAction {
    ThirdViewController *thView = [[ThirdViewController alloc] init];
    [self.navigationController pushViewController:thView animated:YES];



}




- (void)popAction {
//    if (_loginSuccess) {
//        _loginSuccess(@"asdsafd");
//    }
    
    _loginSuccess(@"123");
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
