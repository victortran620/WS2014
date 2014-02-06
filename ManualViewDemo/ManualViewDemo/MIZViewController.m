//
//  MIZViewController.m
//  ManualViewDemo
//
//  Created by Class on 2/6/14.
//  Copyright (c) 2014 Mizzou IT. All rights reserved.
//

#import "MIZViewController.h"

@interface MIZViewController ()

@property (nonatomic, strong) NSArray *blueViewConstraints;
@property (nonatomic, strong) NSArray *greenViewConstraints;

@end

@implementation MIZViewController

- (void)loadView
{
    self.view = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    // Add subviews
    [[self view] addSubview:[self blueView]];
    [[self view] addSubview:[self greenView]];
    
    // Add constraints AFTER you add the subviews
    [self.view addConstraints:self.blueViewConstraints];
    [self.view addConstraints:self.greenViewConstraints];
}

- (UIView *)blueView
{
    if (!_blueView) {
        _blueView = [[UIView alloc] initWithFrame:CGRectZero];
        [_blueView setTranslatesAutoresizingMaskIntoConstraints:NO];
        _blueView.backgroundColor = [UIColor blueColor];
    }
    return _blueView;
}

- (NSArray *)blueViewConstraints
{
    if (!_blueViewConstraints) {
        _blueViewConstraints = @[
                                 [NSLayoutConstraint constraintWithItem:self.blueView
                                                              attribute:NSLayoutAttributeTop
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:self.view
                                                              attribute:NSLayoutAttributeTop
                                                             multiplier:1.0f
                                                               constant:20.0f],
                                 
                                 [NSLayoutConstraint constraintWithItem:self.blueView
                                                              attribute:NSLayoutAttributeRight
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:self.view
                                                              attribute:NSLayoutAttributeTrailing
                                                             multiplier:1.0f
                                                               constant:-30.0f],
                                 
                                 [NSLayoutConstraint constraintWithItem:self.blueView
                                                              attribute:NSLayoutAttributeLeft
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:self.view
                                                              attribute:NSLayoutAttributeLeading
                                                             multiplier:1.0f
                                                               constant:30.0f],
                                 
                                 [NSLayoutConstraint constraintWithItem:self.blueView
                                                              attribute:NSLayoutAttributeBottom
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:self.view
                                                              attribute:NSLayoutAttributeCenterY
                                                             multiplier:1.0f
                                                               constant:-10.0f]
                                 ];
    }
    return _blueViewConstraints;
}

- (UIView *)greenView
{
    if (!_greenView) {
        _greenView = [[UIView alloc] initWithFrame:CGRectZero];
        [_greenView setTranslatesAutoresizingMaskIntoConstraints:NO];
        _greenView.backgroundColor = [UIColor greenColor];
    }
    return _greenView;
}

- (NSArray *)greenViewConstraints
{
    if (!_greenViewConstraints) {
        _greenViewConstraints = @[
                                 [NSLayoutConstraint constraintWithItem:self.greenView
                                                              attribute:NSLayoutAttributeTop
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:self.blueView
                                                              attribute:NSLayoutAttributeBottom
                                                             multiplier:1.0f
                                                               constant:20.0f],
                                 
                                 [NSLayoutConstraint constraintWithItem:self.greenView
                                                              attribute:NSLayoutAttributeRight
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:self.view
                                                              attribute:NSLayoutAttributeTrailing
                                                             multiplier:1.0f
                                                               constant:-30.0f],
                                 
                                 [NSLayoutConstraint constraintWithItem:self.greenView
                                                              attribute:NSLayoutAttributeBottom
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:self.bottomLayoutGuide
                                                              attribute:NSLayoutAttributeTop
                                                             multiplier:1.0f
                                                               constant:-20.0f],
                                 
                                 [NSLayoutConstraint constraintWithItem:self.greenView
                                                              attribute:NSLayoutAttributeLeft
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:self.view
                                                              attribute:NSLayoutAttributeLeading
                                                             multiplier:1.0f
                                                               constant:30.0f]
                                 ];
    }
    return _greenViewConstraints;
}

@end
