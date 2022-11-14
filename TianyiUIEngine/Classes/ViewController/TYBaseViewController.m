//
//  TYBaseViewController.m
//  TianyiFunc
//
//  Created by 千刃雪 on 2022/11/4.
//

#import "TYBaseViewController.h"
#import "TYBaseTool.h"

@interface TYBaseViewController ()

@end

@implementation TYBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self setupNav];
}

- (void)setupNav {
    self.backBtn = [[UIButton alloc] init];
    self.backBtn.frame = CGRectMake(0, 0, 40, 40);
    [self.backBtn addTarget:self action:@selector(backBtnOnClick:) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:self.backBtn];
    self.backBtn.hidden = YES;
    
    self.helpBtn = [[UIButton alloc] init];
    self.helpBtn.frame = CGRectMake(0, 0, 40, 40);
    [self.helpBtn addTarget:self action:@selector(helpBtnOnClick:) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:self.helpBtn];
    self.helpBtn.hidden = YES;
    
    UIImageView *imgV = [UIImageView new];
    imgV.image = [TYBaseTool getImagaResource:@"ty_icon_back_b" bundleName:@"TianyiUIEngine"];
    [self.backBtn addSubview:imgV];
    [imgV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.centerY.mas_equalTo(0);
    }];
    
    UIImageView *imgVr = [UIImageView new];
    imgVr.image = [TYBaseTool getImagaResource:@"ty_icon_help" bundleName:@"TianyiUIEngine"];
    [self.helpBtn addSubview:imgVr];
    [imgVr mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.centerY.mas_equalTo(0);
    }];
}

- (void)helpBtnOnClick:(UIButton *)sender {
    
}

- (void)backBtnOnClick:(UIButton *)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

@end
