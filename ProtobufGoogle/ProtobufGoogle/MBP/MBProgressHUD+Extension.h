//
//  MBProgressHUD+Extension.h
//
//  Created by Yan on 14-5-5.
//  Copyright (c) 2014年 YY. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (Extension)

+ (void)showSuccess:(NSString *)success toView:(UIView *)view;

+ (void)showError:(NSString *)error toView:(UIView *)view;

+ (MBProgressHUD *)showMessage:(NSString *)message toView:(UIView *)view;

+ (void)showSuccess:(NSString *)success;

+ (void)showError:(NSString *)error;

+ (MBProgressHUD *)showMessage:(NSString *)message;

+ (void)hideHUDForView:(UIView *)view;

+ (void)hideHUD;

+ (void)show:(NSString *)text icon:(NSString *)icon view:(UIView *)view;

@end
