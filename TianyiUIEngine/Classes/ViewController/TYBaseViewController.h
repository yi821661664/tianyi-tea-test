//
//  TYBaseViewController.h
//  TianyiFunc
//
//  Created by 千刃雪 on 2022/11/4.
//

#import <UIKit/UIKit.h>
#import <Masonry/Masonry.h>
#import <Colours/Colours.h>

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height

NS_ASSUME_NONNULL_BEGIN

@interface TYBaseViewController : UIViewController

@property(nonatomic, strong) UIButton *backBtn;
@property(nonatomic, strong) UIButton *helpBtn;

@end

NS_ASSUME_NONNULL_END
