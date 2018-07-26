//
//  BaseTabbarController.m
//  BaseTemplate
//
//  Created by L on 2018/7/26.
//  Copyright © 2018年 L. All rights reserved.
//

#import "BaseTabbarController.h"
#import "BaseNavigationController.h"
static NSString  *firstTabbarTitle = @"1";
static NSString  *secondTabbarTitle = @"2";
static NSString  *thirdTabbarTitle = @"3";
static NSString  *fourthTabbarTitle = @"4";
static NSString  *fifthTabbarTitle = @"5";

static NSString  *firstTabbarImages[2] = {@"1",@"1"};
static NSString  *secondTabbarImages[2] = {@"1",@"1"};
static NSString  *thirdTabbarImages[2] = {@"1",@"1"};
static NSString  *fourthTabbarImages[2] = {@"1",@"1"};
static NSString  *fifthTabbarImages[2] = {@"1",@"1"};


@interface BaseTabbarController ()
@property (nonatomic, strong) UIViewController *firstVC;
@property (nonatomic, strong) UIViewController *secondVC;
@property (nonatomic, strong) UIViewController *thirdVC;
@property (nonatomic, strong) UIViewController *fourthVC;
@property (nonatomic, strong) UIViewController *fifthVC;
@end

@implementation BaseTabbarController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[UITabBarItem appearance]setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor brownColor],NSForegroundColorAttributeName,[UIFont systemFontOfSize:18],NSFontAttributeName,nil]forState:UIControlStateSelected];
    [UINavigationBar appearance].backIndicatorTransitionMaskImage = [UIImage imageNamed:@"back"];
    [UINavigationBar appearance].backIndicatorImage = [UIImage imageNamed:@"back"];
    [self addAllViewControllers];
}
#pragma makr - ViewControllers
- (void)addAllViewControllers{
    [self addChildViewController:[[BaseNavigationController alloc]initWithRootViewController:self.firstVC]];
    [self addChildViewController:[[BaseNavigationController alloc]initWithRootViewController:self.secondVC]];
    [self addChildViewController:[[BaseNavigationController alloc]initWithRootViewController:self.thirdVC]];
    [self addChildViewController:[[BaseNavigationController alloc]initWithRootViewController:self.fourthVC]];
    [self addChildViewController:[[BaseNavigationController alloc]initWithRootViewController:self.fifthVC]];
}


#pragma mark - Set TabBar  Attribute
- (void)setTabBarItemImageViewWithController:(UIViewController *)controller image:(NSString *)image selectImage:(NSString *)selectImage{
    controller.tabBarItem.image = [[UIImage imageNamed:image]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    controller.tabBarItem.selectedImage = [[UIImage imageNamed:selectImage]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}
#pragma mark - MemoryWarning
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - Lazy Loading
- (UIViewController *)firstVC{
    if (_firstVC) {
        _firstVC = [[UIViewController alloc]init];
        _firstVC.title = firstTabbarTitle;
        [self setTabBarItemImageViewWithController:_firstVC image:firstTabbarImages[0] selectImage:firstTabbarImages[1]];
    }
    return _firstVC;
}
- (UIViewController *)secondVC{
    if (_secondVC) {
        _secondVC = [[UIViewController alloc]init];
        _secondVC.title = secondTabbarTitle;
        [self setTabBarItemImageViewWithController:_secondVC image:secondTabbarImages[0] selectImage:secondTabbarImages[1]];
    }
    return _firstVC;
}
- (UIViewController *)thirdVC{
    if (_thirdVC) {
        _thirdVC = [[UIViewController alloc]init];
        _thirdVC.title = thirdTabbarTitle;
        [self setTabBarItemImageViewWithController:_firstVC image:thirdTabbarImages[0] selectImage:thirdTabbarImages[1]];
    }
    return _thirdVC;
}
- (UIViewController *)fourthVC{
    if (_fourthVC) {
        _fourthVC = [[UIViewController alloc]init];
        _fourthVC.title = fourthTabbarTitle;
        [self setTabBarItemImageViewWithController:_firstVC image:firstTabbarImages[0] selectImage:fourthTabbarImages[1]];
    }
    return _fourthVC;
}
- (UIViewController *)fifthVC{
    if (_fifthVC) {
        _fifthVC = [[UIViewController alloc]init];
        _fifthVC.title = fifthTabbarTitle;
        [self setTabBarItemImageViewWithController:_firstVC image:firstTabbarImages[0] selectImage:firstTabbarImages[1]];
    }
    return _fifthVC;
}


@end
