//
//  BaseViewController.m
//  BaseTemplate
//
//  Created by L on 2018/7/26.
//  Copyright © 2018年 L. All rights reserved.
//

#import "BaseViewController.h"
#import "GlobalMacros.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

#pragma mark - init
- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}
- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}
#pragma mark -  viewdidLoad
- (void)viewDidLoad {
    [super viewDidLoad];
    [self setNavigation];
}
#pragma mark - 导航栏属性
- (void)setNavigation{
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"nav_bg"] forBarMetrics:UIBarMetricsDefault];
    self.navigationController.navigationBar.titleTextAttributes=@{NSForegroundColorAttributeName:[UIColor whiteColor]/*,NSFontAttributeName:[UIFont boldSystemFontOfSize:17]*/};
    
    [self.navigationController.navigationBar setBackIndicatorImage:[UIImage imageNamed:@"back.png"]];
    [self.navigationController.navigationBar setBackIndicatorTransitionMaskImage:[UIImage imageNamed:@"back.png"]];
    self.navigationController.navigationBar.tintColor= [UIColor whiteColor];
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:self action:@selector(leftAction:)];
    self.navigationItem.backBarButtonItem = backItem;
}

- (void)leftAction:(id)sender{
    
}

- (void)customSetRightBarItemWithImage:(NSString *)image{
    UIButton*rightButton = [[UIButton alloc]initWithFrame:CGRectMake(0,20,30,30)];
    
    [rightButton setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    
    [rightButton addTarget:self action:@selector(rightBarButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem*rightItem = [[UIBarButtonItem alloc]initWithCustomView:rightButton];
    
    self.navigationItem.rightBarButtonItem= rightItem;
}

- (void)setLeftItemWithImage:(NSString *)image {
    UIButton*rightButton = [[UIButton alloc]initWithFrame:CGRectMake(0,20,30,30)];
    
    [rightButton setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    
    [rightButton addTarget:self action:@selector(leftBarButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem*rightItem = [[UIBarButtonItem alloc]initWithCustomView:rightButton];
    
    self.navigationItem.rightBarButtonItem= rightItem;
}
#pragma mark - rightBarButtonAction:
- (void)rightBarButtonAction:(id)sender{
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    DLog(@"内存警告");
    DLog(@"%@",self.title);
}
#pragma mark - Custom Push Controller
- (void)customPushViewController:(UIViewController *)viewController {
    viewController.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:viewController animated:YES];
    self.navigationController.navigationBarHidden = false;
    
}
- (void)leftBarButtonAction:(id)sender{
    
}
#pragma mark - 自定义UILabel
- (UILabel *)setCustomLabelWithRect:(CGRect)rect
                               text:(NSString *)text
                          textColor:(UIColor *)textColor
                      textAlignment:(NSTextAlignment)textAlignment
                               font:(UIFont *)font{
    UILabel *label = [[UILabel alloc]init];
    label.frame = rect;
    label.textColor =textColor;
    label.font = font;
    label.text = text;
    label.textAlignment = textAlignment;
    return label;
}
#pragma mark - 判断是否需要登录
- (BOOL)userLoginState{
    
    return true;
}
#pragma mark - View Method
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}
- (void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
}
-(void)loginComplete{
    
}

@end
