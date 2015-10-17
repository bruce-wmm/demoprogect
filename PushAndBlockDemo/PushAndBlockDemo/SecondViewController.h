//
//  SecondViewController.h
//  
//
//  Created by 鲍俊楠 on 15/9/4.
//
//

#import "MainViewController.h"
typedef void (^ abcBlock) (NSString *str);
@interface SecondViewController : MainViewController

@property (nonatomic, strong) abcBlock loginSuccess;


@end
