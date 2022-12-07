//
//  TYSelectBaseView.m
//  TianyiAVManager
//
//  Created by JOJO on 2022/12/6.
//

#import "TYSelectBaseView.h"
#import <Colours/Colours.h>
#import <Masonry/Masonry.h>
#import "TYBaseTool.h"

@interface TYSelectBaseView()

@property(nonatomic, strong) UILabel *titleLb;
@property(nonatomic, strong) UIImageView *selectImgView;
@property(nonatomic, strong) UIButton *btn;

@end

@implementation TYSelectBaseView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.btn = [UIButton new];
        [self.btn addTarget:self action:@selector(btnOnClick:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:self.btn];
        
        self.titleLb = [UILabel new];
        self.titleLb.font = [UIFont systemFontOfSize:16];
        self.titleLb.textColor = [UIColor colorFromHexString:@"333333"];
        [self addSubview:self.titleLb];
        
        self.selectImgView = [UIImageView new];
        self.selectImgView.contentMode = UIViewContentModeScaleAspectFill;
        [self addSubview:self.selectImgView];
        
        [self.btn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.mas_equalTo(0);
        }];
        [self.titleLb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.mas_equalTo(0);
            make.left.mas_equalTo(15);
        }];
        [self.selectImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.mas_equalTo(0);
            make.right.mas_equalTo(-15);
            make.size.mas_equalTo(CGSizeMake(20, 20));
        }];
    }
    return self;
}

- (void)btnOnClick:(UIButton *)sender {
    if (self.delegate && [self.delegate respondsToSelector:@selector(tySelectBaseViewOnClick:)]) {
        [self.delegate tySelectBaseViewOnClick:self];
    }
}

- (void)setTitle:(NSString *)title {
    _title = title;
    self.titleLb.text = _title;
}

- (void)setIcon:(NSString *)icon bundle:(NSString *)bundleName {
    if (icon.length <= 0) {
        return;
    }
    if (bundleName.length <= 0) {
        bundleName = @"TianyiUIEngine";
    }
    self.selectImgView.image = [TYBaseTool getImagaResource:icon bundleName:bundleName];
}

@end
