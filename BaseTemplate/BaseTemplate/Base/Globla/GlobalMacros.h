//
//  GlobalMacros.h
//  BaseTemplate
//
//  Created by L on 2018/7/26.
//  Copyright © 2018年 L. All rights reserved.
//

#ifndef GlobalMacros_h
#define GlobalMacros_h
#define weakTypesFY  __weak typeof(self)weakS = self;
//获取系统版本
#define IOS_VERSION [[[UIDevice currentDevice] systemVersion] floatValue]
// 大于 iOS 8 的系统
#define ABOVE_IOS8 (([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0) ? YES : NO)

// 直接判断机型
#define IS_IPHONE (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
#define GHSCREEN_WIDTH  [UIScreen mainScreen].bounds.size.width
#define GHSCREEN_HEIGHT  [UIScreen mainScreen].bounds.size.height
#define SCREEN_MAX_LENGTH (MAX(GHSCREEN_WIDTH, GHSCREEN_HEIGHT))
#define IS_IPHONE_4 (fabs((double)[[UIScreen mainScreen]bounds].size.height - (double)480) < DBL_EPSILON)
#define IS_IPHONE_5 (fabs((double)[[UIScreen mainScreen]bounds].size.height - (double)568) < DBL_EPSILON)
#define IS_IPHONE_6 (fabs((double)[[UIScreen mainScreen]bounds].size.height - (double)667) < DBL_EPSILON)
#define IS_IPHONE_6_PLUS (fabs((double)[[UIScreen mainScreen]bounds].size.height - (double)736) < DBL_EPSILON)
#define IS_IPHONE_X (IS_IPHONE && SCREEN_MAX_LENGTH > 736.0)

//*********************************************
//             常用的尺寸相关宏定义
//*********************************************

//状态栏高度
#define STATUS_BAR_HEIGHT 20
//NavBar高度
#define NAVIGATION_BAR_HEIGHT 44
//状态栏 ＋ 导航栏 高度
#define STATUS_AND_NAVIGATION_HEIGHT ((STATUS_BAR_HEIGHT) + (NAVIGATION_BAR_HEIGHT))

//屏幕 rect
#define SCREEN_RECT ([UIScreen mainScreen].bounds)

#define SCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width)

#define SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)

#define CONTENT_HEIGHT (SCREEN_HEIGHT - NAVIGATION_BAR_HEIGHT - STATUS_BAR_HEIGHT)

#define SIZE_PERCENT (SCREEN_HEIGHT==568?1:(SCREEN_HEIGHT<568?((float)320/320):((float)SCREEN_WIDTH/320)))

//屏幕分辨率
#define SCREEN_RESOLUTION (SCREEN_WIDTH * SCREEN_HEIGHT * ([UIScreen mainScreen].scale))

// 16进制颜色
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
// RGB颜色
#define kRGB(r,g,b) [UIColor colorWithRed:r/255. green:g/255. blue:b/255. alpha:1]
#define HEXCOLOR(rgbValue)                                                                                             \
[UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16)) / 255.0                                               \
green:((float)((rgbValue & 0xFF00) >> 8)) / 255.0                                                  \
blue:((float)(rgbValue & 0xFF)) / 255.0                                                           \
alpha:1.0]

#define RedNormol_Color [UIColor colorWithHexString:@"#60b306"]
#define GreenNormol_Color [UIColor colorWithHexString:@"#FA5453"]
//DEBUG下打印日志
#ifdef DEBUG
#define DLog(fmt, ...) {NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);}
#define ELog(err) {if(err) DLog(@"%@", err)}
#else
#define DLog(...)
#define ELog(err)
#endif
//适配iPhoneX
#define kWJHeightCoefficient (SCREEN_HEIGHT == 812.0 ? 667.0/667.0 : kWJScreenHeight/667.0)
#define SafeAreaTopHeight (SCREEN_HEIGHT == 812.0 ? 88 : 64)
#define IOS7 [[[UIDevice currentDevice] systemVersion] floatValue]>=7.0

#define Frame(x,y,w,h) CGRectMake(x, y, w, h)
#define LoadingMSG @"加载中..."

//NSUserDefaults 实例化
#define USER_DEFAULT [NSUserDefaults standardUserDefaults]
#define USER_loginInfo [USER_DEFAULT objectForKey:@"loginDic"]
//默认头像
#define CCPlaceholderImage [UIImage imageNamed:@"wode_touxiang"]

#define random(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)/255.0]
#define randomColor random(arc4random_uniform(256), arc4random_uniform(256), arc4random_uniform(256), arc4random_uniform(256))

//跌
#define FallColor [UIColor colorWithHexString:@"#60b306"]
//涨
#define RoseColor [UIColor colorWithHexString:@"#df0f0f"]

#define  HeaderPlaceholderImage [UIImage imageNamed:@"weidenglu"]

#endif /* GlobalMacros_h */
