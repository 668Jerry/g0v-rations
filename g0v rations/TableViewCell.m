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
        self.uiivLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 1000, 72)];
        [self.contentView addSubview:self.uiivLabel];
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
