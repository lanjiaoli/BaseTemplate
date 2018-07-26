//
//  BaseViewController.h
//  BaseTemplate
//
//  Created by L on 2018/7/26.
//  Copyright © 2018年 L. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController
- (void)customPushViewController:(UIViewController *)viewController;
- (void)customSetRightBarItemWithImage:(NSString *)image;
- (void)rightBarButtonAction:(id)sender;
- (void)setLeftItemWithImage:(NSString *)image;
- (void)leftBarButtonAction:(id)sender;
@end
