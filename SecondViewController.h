//
//  SecondViewController.h
//  DelegationTest
//
//  Created by Micah Lanier on 3/20/15.
//  Copyright (c) 2015 Micah Lanier Design and Illustration. All rights reserved.
//

#import <UIKit/UIKit.h>

//We make this .h declare the protocol methods. Why? He knows you live where you can do something that he can't because he doesn't live there. You do. You have access to do something he wants.



@protocol SecondVCDelegate <NSObject>

- (void)performAction; //This is the action that the Don wants performed. Any method up here are actions that he wants done.

@end

@interface SecondViewController : UIViewController

@property (nonatomic, assign) id <SecondVCDelegate> delegate; //This is the compiled book of favors of the Don.

@end
