//
//  SecondViewController.m
//  DelegationTest
//
//  Created by Micah Lanier on 3/20/15.
//  Copyright (c) 2015 Micah Lanier Design and Illustration. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (IBAction)onButtonTapped:(id)sender {
    //He told us to do it, but didn't say how. It's up to the delegate to implement how to do it.
    [self.delegate performAction];
}




@end
