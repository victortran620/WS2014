//
//  MIZEpisode.h
//  EpisodeListDemo
//
//  Created by Class on 3/6/14.
//  Copyright (c) 2014 Mizzou IT. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MIZEpisode : NSObject

@property (nonatomic, strong) NSString *episodeName;
@property (nonatomic, strong) NSString *director;
@property (nonatomic, strong) NSString *writer;
@property (nonatomic, strong) NSString *synopsis;
@property (nonatomic, strong) NSString *airDate;

@property (nonatomic, assign) NSUInteger season;
@property (nonatomic, assign) NSUInteger episodeNumber;
@property (nonatomic, assign) CGFloat starDate;

@end
