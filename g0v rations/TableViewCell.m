//
//  TableViewCell.m
//  g0v rations
//
//  Created by lololol on 29/Aug/14.
//  Copyright (c) 2014 Leisure Design. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        self.uiivLabel1 = [[UILabel alloc] initWithFrame:CGRectMake(25, 0, 30, 20)];
        [self.contentView addSubview:self.uiivLabel1];
        self.uiivLabel2 = [[UILabel alloc] initWithFrame:CGRectMake(55, 10, 250, 20)];
        [self.contentView addSubview:self.uiivLabel2];
        self.uiivLabel3 = [[UILabel alloc] initWithFrame:CGRectMake(55, 40, 250, 20)];
        [self.contentView addSubview:self.uiivLabel3];
    }
    self.backgroundColor = [UIColor clearColor];
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
