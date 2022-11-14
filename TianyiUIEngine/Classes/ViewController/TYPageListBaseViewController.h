//
//  TYPageListBaseViewController.h
//  TianyiFunc
//
//  Created by 千刃雪 on 2022/11/4.
//

#import <UIKit/UIKit.h>
#import <Colours/Colours.h>
#import "TYBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN

@protocol TYPageListBaseViewControllerDelegate <NSObject>

- (void)tyBaseListDidSelect:(NSInteger)index;

@end

@interface TYPageListBaseViewController : TYBaseViewController<TYPageListBaseViewControllerDelegate>

@property(nonatomic, strong) NSArray <NSString *>*funcsList;
@property(nonatomic, weak) id<TYPageListBaseViewControllerDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
