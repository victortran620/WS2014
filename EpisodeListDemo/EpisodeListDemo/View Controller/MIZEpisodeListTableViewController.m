//
//  MIZEpisodeListTableViewController.m
//  EpisodeListDemo
//
//  Created by Class on 2/18/14.
//  Copyright (c) 2014 Mizzou IT. All rights reserved.
//

#import "MIZEpisodeListTableViewController.h"

@implementation MIZEpisodeListTableViewController

static NSString *cellIdentifier = @"Cell";

#pragma mark - Notification handling

- (void)respondToProcessingComplete:(NSNotification *)notification
{
    NSLog(@"PROCESSING COMPLETE");
    NSDictionary *userInfo = notification.userInfo;
    self.episodes = userInfo[@"episodes"];
    [[NSOperationQueue mainQueue] addOperationWithBlock:^{
        [self.tableView reloadData];
    }];
    
}

#pragma mark - View Lifecycle
- (void)viewDidLoad
{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(respondToProcessingComplete:) name:@"MIZEpisodesFinishedProcessing" object:nil];
    [MIZEpisodeListFetcher fetchEpisodeList];
}


#pragma mark - TableView Data Source

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    MIZEpisode *episode = self.episodes[indexPath.row];
//    cell.textLabel.text = episode.episodeName;
    return cell;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.episodes.count;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return [NSString stringWithFormat:@"Episodes"];
}

@end
