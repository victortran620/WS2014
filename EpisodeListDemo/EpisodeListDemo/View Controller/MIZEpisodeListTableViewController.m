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

#pragma mark - View Lifecycle
- (void)viewDidLoad
{
    self.seasonOne = @[
                       @"The Man Trap",
                       @"Charlie X"
                       @"Where No Man Has Gone Before",
                       @"The Naked Time",
                       @"The Enemy Within",
                       @"Mudd's Women",
                       @"What Are Little Girls Made Of?",
                       @"Miri",
                       @"Dagger of the Mind",
                       @"The Corbomite Maneuver",
                       @"The Menagerie, Part I",
                       @"The Menagerie, Part II",
                       @"The Conscience of the King",
                       @"Balance of Terror",
                       @"Shore Leave",
                       @"The Galileo Seven",
                       @"The Squire of Gothos",
                       @"Arena",
                       @"Tomorrow Is Yesterday",
                       @"Court Martial",
                       @"The Return of the Archons",
                       @"Space Seed",
                       @"A Taste of Armageddon",
                       @"This Side of Paradise",
                       @"The Devil in the Dark",
                       @"Errand of Mercy",
                       @"The Alternative Factor",
                       @"The City on the Edge of Forever",
                       @"Operation: Annihilate!"
                       ];
    
    self.seasonTwo = @[
                       @"Amok Time",
                       @"Who Mourns for Adonais?",
                       @"The Changeling",
                       @"Mirror, Mirror",
                       @"The Apple",
                       @"The Doomsday Machine",
                       @"Catspaw",
                       @"I, Mudd",
                       @"Metamorphosis",
                       @"Journey to Babel",
                       @"Friday's Child",
                       @"The Deadly Years",
                       @"Obsession",
                       @"Wolf in the Fold",
                       @"The Trouble with Tribbles",
                       @"The Gamesters of Triskelion",
                       @"A Piece of the Action",
                       @"The Immunity Syndrome",
                       @"A Private Little War",
                       @"Return to Tomorrow",
                       @"Patterns of Force",
                       @"By Any Other Name",
                       @"The Omega Glory",
                       @"The Ultimate Computer",
                       @"Bread and Circuses",
                       @"Assignment: Earth"
                       ];
    
    self.seasonThree = @[
                         @"Spock's Brain",
                         @"The Enterprise Incident",
                         @"The Paradise Syndrome",
                         @"And the Children Shall Lead",
                         @"Is There in Truth No Beauty?",
                         @"Spectre of the Gun",
                         @"Day of the Dove",
                         @"For the World Is Hollow and I Have Touched the Sky",
                         @"The Tholian Web",
                         @"Plato's Stepchildren",
                         @"Wink of an Eye",
                         @"The Empath",
                         @"Elaan of Troyius",
                         @"Whom Gods Destroy",
                         @"Let That Be Your Last Battlefield",
                         @"The Mark of Gideon",
                         @"That Which Survives",
                         @"The Lights of Zetar",
                         @"Requiem for Methuselah",
                         @"The Way to Eden",
                         @"The Cloud Minders",
                         @"The Savage Curtain",
                         @"All Our Yesterdays",
                         @"Turnabout Intruder"
                         ];
    
    self.showSeasons = @[self.seasonOne, self.seasonTwo, [self seasonThree]];
    [self.tableView registerClass:[MIZTableViewHeaderView class] forHeaderFooterViewReuseIdentifier:@"Header"];

}


#pragma mark - TableView Data Source

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    NSArray *season = self.showSeasons[indexPath.section];
    NSString *episodeName = season[indexPath.row];
    cell.textLabel.text = episodeName;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%d", indexPath.row + 1];
    return cell;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [[self showSeasons] count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.showSeasons[section] count];
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    MIZTableViewHeaderView *headerView = [tableView dequeueReusableHeaderFooterViewWithIdentifier:@"Header"];
    headerView.titleLabel.text = [NSString stringWithFormat:@"SEASON %d", section + 1];
    return headerView;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 30.0f;
}

@end
