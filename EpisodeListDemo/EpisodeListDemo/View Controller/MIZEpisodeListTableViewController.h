//
//  MIZEpisodeListTableViewController.h
//  EpisodeListDemo
//
//  Created by Class on 2/18/14.
//  Copyright (c) 2014 Mizzou IT. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MIZTableViewHeaderView.h"

@interface MIZEpisodeListTableViewController : UITableViewController

@property (nonatomic, strong) NSArray *seasonOne;
@property (nonatomic, strong) NSArray *seasonTwo;
@property (nonatomic, strong) NSArray *seasonThree;

@property (nonatomic, strong) NSArray *showSeasons;

@end
