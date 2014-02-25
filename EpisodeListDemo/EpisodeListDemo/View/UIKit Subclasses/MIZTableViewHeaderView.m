//
//  MIZTableViewHeaderView.m
//  EpisodeListDemo
//
//  Created by Class on 2/25/14.
//  Copyright (c) 2014 Mizzou IT. All rights reserved.
//

#import "MIZTableViewHeaderView.h"

@implementation MIZTableViewHeaderView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.contentView.backgroundColor = [UIColor colorWithRed:220.0f/255.0f
                                                           green:220.0f/255.0f
                                                            blue:220.0f/255.0f
                                                           alpha:1.0f];
        UINib *sectionHeaderNib = [UINib nibWithNibName:@"SectionHeader" bundle:nil];
        [sectionHeaderNib instantiateWithOwner:self options:0];
        
        [self.aView setTranslatesAutoresizingMaskIntoConstraints:NO];
        [self.contentView addSubview:self.aView];
        
        [self.contentView addConstraints:@[
                                           [NSLayoutConstraint constraintWithItem:self.aView
                                                                        attribute:NSLayoutAttributeTop
                                                                        relatedBy:NSLayoutRelationEqual
                                                                           toItem:self.contentView
                                                                        attribute:NSLayoutAttributeTop
                                                                       multiplier:1.0f
                                                                         constant:0.0f],
                                           [NSLayoutConstraint constraintWithItem:self.aView
                                                                        attribute:NSLayoutAttributeRight
                                                                        relatedBy:NSLayoutRelationEqual
                                                                           toItem:self.contentView
                                                                        attribute:NSLayoutAttributeTrailing
                                                                       multiplier:1.0f
                                                                         constant:0.0f],
                                           [NSLayoutConstraint constraintWithItem:self.aView
                                                                        attribute:NSLayoutAttributeBottom
                                                                        relatedBy:NSLayoutRelationEqual
                                                                           toItem:self.contentView
                                                                        attribute:NSLayoutAttributeBottom
                                                                       multiplier:1.0f
                                                                         constant:0.0f],
                                           [NSLayoutConstraint constraintWithItem:self.aView
                                                                        attribute:NSLayoutAttributeLeft
                                                                        relatedBy:NSLayoutRelationEqual
                                                                           toItem:self.contentView
                                                                        attribute:NSLayoutAttributeLeading
                                                                       multiplier:1.0f
                                                                         constant:0.0f]
                                           ]];
        
    }
    return self;
}

@end
