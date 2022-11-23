//
//  TYHud.m
//  TianyiUIEngine
//
//  Created by 易召强 on 2022/11/22.
//

#import "TYHud.h"
#import "TYCustomView.h"

@implementation TYHud

/// 默认1.5s的toast信息
+ (void)showToast:(NSString *)message duration:(CGFloat)duration userInteraction:(BOOL)userInteraction {
    if (message.length <= 0) {
        return;
    }
    if (duration <= 0) {
        duration = 1.5;
    }
    UIView *view = [UIApplication sharedApplication].keyWindow;
    [self disMissInView:view];
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.contentColor = [UIColor blackColor];
    hud.label.text = message;
    hud.label.numberOfLines = 0;
    hud.bezelView.style = MBProgressHUDBackgroundStyleSolidColor;
    hud.bezelView.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.6];
    // 再设置模式
    hud.mode = MBProgressHUDModeText;
    // 隐藏时候从父控件中移除
    hud.removeFromSuperViewOnHide = YES;
    hud.userInteractionEnabled = userInteraction;
    // 1.5秒之后再消失
    [hud hideAnimated:YES afterDelay:duration];
}
/// 展示加载弹窗
+ (void)showLoading {
    [self showLoadingInView:[UIApplication sharedApplication].keyWindow];
}
/// 在某个页面展示加载弹窗
+ (void)showLoadingInView:(UIView *)view {
    UIView *superV = view;
    if (superV == nil) {
        superV = [UIApplication sharedApplication].keyWindow;
    }
    TYCustomView *loadingView = [[TYCustomView alloc] initWithFrame:CGRectMake(0, 0, 120, 120) redLoading:NO];
    
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:superV animated:YES];
    hud.mode = MBProgressHUDModeCustomView;
    hud.customView = loadingView;
    hud.minShowTime = 0.5;
    hud.bezelView.style = MBProgressHUDBackgroundStyleSolidColor;
    hud.bezelView.backgroundColor = [UIColor clearColor];
    hud.userInteractionEnabled = NO;
    hud.removeFromSuperViewOnHide = YES;
    hud.minSize = CGSizeMake(120, 120);
    hud.margin = 0;
    hud.square = YES;
    hud.animationType = MBProgressHUDAnimationFade;
    loadingView.userInteractionEnabled = NO;
}
/// 隐藏
+ (void)disMiss {
    [self disMissInView:[UIApplication sharedApplication].keyWindow];
}
/// 隐藏某个view中的弹窗
+ (void)disMissInView:(UIView *)view {
    [MBProgressHUD hideHUDForView:view animated:YES];
    view.userInteractionEnabled = YES;
}

@end
