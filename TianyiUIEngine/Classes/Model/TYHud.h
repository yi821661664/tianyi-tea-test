//
//  TYHud.h
//  TianyiUIEngine
//
//  Created by 易召强 on 2022/11/22.
//

#import <Foundation/Foundation.h>
#import <MBProgressHUD/MBProgressHUD.h>

NS_ASSUME_NONNULL_BEGIN

@interface TYHud : NSObject

/// 默认1.5s的toast信息
+ (void)showToast:(NSString *)message duration:(CGFloat)duration userInteraction:(BOOL)userInteraction;
/// 展示加载弹窗
+ (void)showLoading;
/// 在某个页面展示加载弹窗
+ (void)showLoadingInView:(UIView *)view;
/// 隐藏
+ (void)disMiss;
/// 隐藏某个view中的弹窗
+ (void)disMissInView:(UIView *)view;

@end

NS_ASSUME_NONNULL_END
