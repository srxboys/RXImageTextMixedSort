//
//  RXTableViewCell.m
//  RXImageTextMixedSort
//
//  Created by srx on 16/5/17.
//  Copyright © 2016年 https://github.com/srxboys. . All rights reserved.
//

#import "RXTableViewCell.h"
#import "RXCellHeight.h"
#import "RXDataModel.h"
#import "UIImageView+WebCache.h"

@interface RXTableViewCell ()
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imgView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *imgViewHeight;
@property (weak, nonatomic) IBOutlet UILabel *txtLabel;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *txtLabelHeight;

@end


@implementation RXTableViewCell
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
_imgViewHeight.constant = ActureHeight(150); //屏幕适配
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

- (void)setCellModel:(RXCellHeight *)cellModel {
    RXDataModel  * model = cellModel.model;
    _nameLabel.text = model.name;
    _timeLabel.text = [self timeCoverLongLongDataMonthDay:model.time];
    [_imgView sd_setImageWithURL:[NSURL URLWithString:model.image]];
    
    _txtLabel.text = model.text;
    _txtLabelHeight.constant = cellModel.txtHeight;
}

///时间戳  年-月-日 时:分:秒
- (NSString *)timeCoverLongLongDataMonthDay:(NSString *)time {
    if(time == 0) {
        return @"00-00-00 00:00";
    }
    
    NSDate * date = [NSDate dateWithTimeIntervalSince1970:[time doubleValue]];
    
    NSDateFormatter * _dateFormatter = [[NSDateFormatter alloc] init];
    [_dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss "];
    NSString * dataString = [_dateFormatter stringFromDate:date];
    return dataString;
}

@end
