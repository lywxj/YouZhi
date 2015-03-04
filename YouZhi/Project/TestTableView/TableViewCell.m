//
//  TableViewCell.m
//  YouZhi
//
//  Created by Arvin on 15/3/4.
//  Copyright (c) 2015年 com.roroge. All rights reserved.
//

#import "TableViewCell.h"
#import "Common.h"

@interface TableViewCell ()

@property (strong, nonatomic) IBOutlet UIView *cellBgView;
@property (strong, nonatomic) IBOutlet UIImageView *headView;

@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *titleLabel;

@end

@implementation TableViewCell

- (void)awakeFromNib {
    // Initialization code
    
    self.headView.layer.cornerRadius = self.headView.frame.size.width/2;
    self.headView.layer.masksToBounds = YES;
    self.cellBgView.layer.cornerRadius = 5;
    self.cellBgView.layer.masksToBounds = NO;
    self.cellBgView.backgroundColor = RGB(250, 250, 250);
}

- (void)configCellWithObj:(TestObj *)obj {
    self.headView.image = [UIImage imageNamed:@"test.png"];
    self.nameLabel.text = obj.tName;
    self.titleLabel.text = obj.tTitle;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
