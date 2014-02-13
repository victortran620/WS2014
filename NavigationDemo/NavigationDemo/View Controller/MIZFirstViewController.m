//
//  MIZFirstViewController.m
//  NavigationDemo
//
//  Created by Class on 2/11/14.
//  Copyright (c) 2014 Mizzou IT. All rights reserved.
//

#import "MIZFirstViewController.h"

@implementation MIZFirstViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"PushToSecond"]) {
        MIZSecondViewController *secondViewController = segue.destinationViewController;
        secondViewController.labelText = NSLocalizedString(@"Performed Second Segue", nil);
    }
}

- (IBAction)pushFourthViewController:(id)sender
{
    // First thing's first. Get the storyboard.
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    // Second get the view controller out of the storyboard.
    MIZFourthViewController *fourthViewController = [mainStoryboard instantiateViewControllerWithIdentifier:@"FourthViewController"];
    
    // Third, push.
    [[self navigationController] pushViewController:fourthViewController animated:YES];
}

@end
