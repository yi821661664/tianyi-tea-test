//
//  TYHomePageViewController.m
//  TianyiFunc
//
//  Created by 千刃雪 on 2022/11/4.
//

#import "TYHomePageViewController.h"

@interface TYHomePageViewController ()

@end

@implementation TYHomePageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.delegate = self;
    self.title = @"天锁斩月";
    self.title = @"小小Demo";
    self.funcsList = @[@"音视频"];
//    self.funcsList = @[@"音视频",@"不普通的轮子",@"算法相关",@"难点攻坚"];
}

#pragma mark - delegate
- (void)tyBaseListDidSelect:(NSInteger)index {
    UIViewController *vc = nil;
    switch (index) {
        case 0:
            vc = [[NSClassFromString(@"TYMediaHomePageViewController") alloc] init];
            break;
        case 1:
            
            break;
        case 2:
            
            break;
        case 3:
            
            break;
        default:
            
            break;
    }
    if (vc == nil) {
        vc = [[UIViewController alloc] init];
    }
    [self.navigationController pushViewController:vc animated:YES];
}

@end
