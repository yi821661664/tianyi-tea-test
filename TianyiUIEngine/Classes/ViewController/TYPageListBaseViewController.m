//
//  TYPageListBaseViewController.m
//  TianyiFunc
//
//  Created by 千刃雪 on 2022/11/4.
//

#import "TYPageListBaseViewController.h"
#import "TYPageListBaseCell.h"

@interface TYPageListBaseViewController ()<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic, strong) UITableView *table;

@end

@implementation TYPageListBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.table];
    [self.table mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.mas_equalTo(0);
        make.top.mas_equalTo(self.mas_topLayoutGuide);
        make.bottom.mas_equalTo(self.mas_bottomLayoutGuideTop);
    }];
}

- (void)setFuncsList:(NSArray<NSString *> *)funcsList {
    _funcsList = funcsList;
    [_table reloadData];
}

- (void)tyBaseListDidSelect:(NSInteger)index {
    
}

#pragma mark - table delegate & datasource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.funcsList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TYPageListBaseCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass(TYPageListBaseCell.self)];
    NSString *title = [self.funcsList objectAtIndex:indexPath.row];
    cell.titleLb.text = title;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    if (self.delegate && [self.delegate respondsToSelector:@selector(tyBaseListDidSelect:)]) {
        [self.delegate tyBaseListDidSelect:indexPath.row];
    }
}

#pragma mark - lazy init
- (UITableView *)table {
    if (!_table) {
        _table = [[UITableView alloc] init];
        _table.delegate = self;
        _table.dataSource = self;
        _table.clipsToBounds = YES;
        _table.separatorStyle = UITableViewCellSeparatorStyleNone;
        _table.estimatedRowHeight = 0;
        _table.estimatedSectionHeaderHeight = 0;
        _table.estimatedSectionFooterHeight = 0;
        [_table registerClass:[TYPageListBaseCell class] forCellReuseIdentifier:NSStringFromClass(TYPageListBaseCell.self)];
        if (@available(iOS 11.0, *)) {
            _table.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
        }
    }
    return _table;
}

@end
