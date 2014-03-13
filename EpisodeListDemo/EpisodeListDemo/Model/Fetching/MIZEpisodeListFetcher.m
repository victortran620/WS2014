//
//  MIZEpisodeListFetcher.m
//  EpisodeListDemo
//
//  Created by Class on 3/6/14.
//  Copyright (c) 2014 Mizzou IT. All rights reserved.
//

#import "MIZEpisodeListFetcher.h"

@implementation MIZEpisodeListFetcher

+ (void)fetchEpisodeList
{
    NSString *urlString = @"http://cl.ly/code/0R3z450v2f1T/StarTrek.json";
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLSession *session = [NSURLSession sharedSession];
    [[session dataTaskWithURL:url completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *)response;
        if (httpResponse.statusCode == 200) {
             NSLog(@"HEY WE GOT DATA");
            [MIZEpisodeListFetcher processEpisodeListFromData:data];
        } else {
            NSLog(@"SOMETHING UNEXPECTED HAPPENED");
        }
    }] resume];
}

+ (void)processEpisodeListFromData:(NSData *)data
{
    NSMutableArray *episodes = [[NSMutableArray alloc] init];
    
    // Here, have an error.
    NSError *error;
    // Turn the data into a dictionary
    NSDictionary *episodeDictionary = [NSJSONSerialization JSONObjectWithData:data options:0 error:&error];
    // get the root array for the JSON
    NSArray *episodeDictionaries = episodeDictionary[@"episodes"];
    for (NSDictionary *dictionary in episodeDictionaries) {
        MIZEpisode *episode = [[MIZEpisode alloc] init];
        episode.episodeName = dictionary[@"name"];
        episode.airDate = dictionary[@"air_date"];
        episode.writer = dictionary[@"written_by"];
        episode.director = dictionary[@"directed_by"];
        episode.synopsis = dictionary[@"synopsis"];
        episode.season = [dictionary[@"season"] integerValue];
        episode.episodeNumber = [dictionary[@"episode"] integerValue];
        episode.starDate = [dictionary[@"star_date"] floatValue];
        [episodes addObject:episode];
    }
    
    // send out a notification that processing is complete.
    [[NSNotificationCenter defaultCenter] postNotificationName:@"MIZEpisodesFinishedProcessing" object:nil userInfo:@{ @"episodes" : episodes}];
}

@end
