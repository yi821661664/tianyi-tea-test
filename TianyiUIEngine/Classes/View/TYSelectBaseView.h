//
//  TYSelectBaseView.h
//  TianyiAVManager
//
//  Created by JOJO on 2022/12/6.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class TYSelectBaseView;

@protocol TYSelectBaseViewDelegate <NSObject>

- (void)tySelectBaseViewOnClick:(TYSelectBaseView *)view;

@end

@interface TYSelectBaseView : UIView

@property(nonatomic, weak) id<TYSelectBaseViewDelegate> delegate;
@property(nonatomic, copy) NSString *title;
@property(nonatomic, assign) BOOL isSelected;
- (void)setIcon:(NSString *)icon bundle:(NSString *)bundleName;

@end

NS_ASSUME_NONNULL_END
