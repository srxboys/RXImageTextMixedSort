//
//  ViewController.m
//  RXImageTextMixedSort
//
//  Created by srx on 16/5/17.
//  Copyright © 2016年 srxboys. All rights reserved.
//
//图文混排

#import "ViewController.h"
#import "RXRandom.h"
#import "RXCellHeight.h"
#import "RXDataModel.h"
#import "RXTableViewCell.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>
{
    NSMutableArray * _sourceArr;
}
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self configUI];
}

- (void)configUI {
    
    _sourceArr = [[NSMutableArray alloc] init];
    [self loacalFalseData];
}

- (void)loacalFalseData {
    for(NSInteger i = 0; i < arc4random() % 100 + 1; i++) {
        NSString * name = [RXRandom randomChinasWithinCount:6];
        NSString * time = [RXRandom randomTimeCountdown];
        NSString * img = [RXRandom randomImageURL];
        NSString * text = [RXRandom randomChinasWithinCount:500];
        NSDictionary * dict = @{@"name"  : name,
                                @"time"  : time,
                                @"image" : img,
                                @"text"  : text};
        RXDataModel * model = [RXDataModel dataModelWithDict:dict];
        //计算高度的模型
        RXCellHeight * cellModel = [[RXCellHeight alloc] init];
        cellModel.model = model;
        
        [_sourceArr addObject:cellModel];
    }
    
    [_tableView reloadData];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _sourceArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString * cellIndifier = @"CustomTableViewCell";
    RXTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellIndifier];
    [cell setCellModel:_sourceArr[indexPath.row]];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    RXCellHeight * cellModel = _sourceArr[indexPath.row];
    return cellModel.cellHeight;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
