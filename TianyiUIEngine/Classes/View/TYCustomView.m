//
//  TYCustomView.m
//  TianyiUIEngine
//
//  Created by 易召强 on 2022/11/22.
//

#import "TYCustomView.h"
#import "TYBaseTool.h"

@interface TYCustomView()

@property(nonatomic, strong) UIImageView *loadingImgView;

@end

@implementation TYCustomView

- (instancetype)initWithFrame:(CGRect)frame redLoading:(BOOL)isRedLoading {
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubview:self.loadingImgView];
        _loadingImgView.image = [TYBaseTool getLoadingImg:isRedLoading];
        self.loadingImgView.frame = CGRectMake(-frame.size.width/2.0, -frame.size.height/2.0, frame.size.width, frame.size.height);
        self.loadingImgView.contentMode = UIViewContentModeScaleAspectFill;
        CABasicAnimation *rotate = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
        rotate.repeatCount = HUGE_VALF;
        rotate.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
        rotate.duration = 0.8;
        rotate.toValue = 0;
        rotate.toValue = [NSNumber numberWithFloat:2.0 * M_PI];
        rotate.removedOnCompletion = NO;
//        self.loadingImgView.center = self.center;
        [self.loadingImgView.layer addAnimation:rotate forKey:@"rotation"];
    }
    return self;
}

- (UIImageView *)loadingImgView {
    if (!_loadingImgView) {
        _loadingImgView = [UIImageView new];
        _loadingImgView.image = [TYBaseTool getLoadingImg:NO];
    }
    return _loadingImgView;
}

@end
