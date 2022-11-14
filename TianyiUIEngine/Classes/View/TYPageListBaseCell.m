//
//  TYPageListBaseCell.m
//  TianyiFunc
//
//  Created by 千刃雪 on 2022/11/4.
//

#import "TYPageListBaseCell.h"
#import <Colours/Colours.h>
#import <Masonry/Masonry.h>
#import "TYBaseTool.h"

@interface TYPageListBaseCell()

@end

@implementation TYPageListBaseCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self.contentView addSubview:self.titleLb];
        [self.contentView addSubview:self.arrowImgV];
        
        [self.arrowImgV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.mas_equalTo(0);
            make.right.mas_equalTo(-20);
            make.size.mas_equalTo(CGSizeMake(15/2.0, 28/2.0));
        }];
        [self.titleLb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.mas_equalTo(0);
            make.left.mas_equalTo(20);
            make.right.mas_equalTo(self.arrowImgV.mas_left).offset(-10);
        }];
    }
    return self;
}

#pragma mark - lazy init
- (UILabel *)titleLb {
    if (!_titleLb) {
        _titleLb = [UILabel new];
        _titleLb.textColor = [UIColor colorFromHexString:@"333333"];
        _titleLb.font = [UIFont systemFontOfSize:16];
    }
    return _titleLb;
}

- (UIImageView *)arrowImgV {
    if (!_arrowImgV) {
        _arrowImgV = [UIImageView new];
        _arrowImgV.image = [TYBaseTool getImagaResource:@"ty_icon_arrow_r" bundleName:@"TianyiUIEngine"];
        _arrowImgV.contentMode = UIViewContentModeScaleAspectFill;
    }
    return _arrowImgV;
}

@end
