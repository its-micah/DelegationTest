//
//  RootViewController.m
//  DelegationTest
//
//  Created by Micah Lanier on 3/20/15.
//  Copyright (c) 2015 Micah Lanier Design and Illustration. All rights reserved.
//

#import "RootViewController.h"
#import "SecondViewController.h"

@interface RootViewController () <SecondVCDelegate> //importing the delegat here. It says that the Don wants you to do something and he's counting on you to do it for him.
@property (weak, nonatomic) IBOutlet UIView *blueView;
@end

//Think of delegation of having to follow the GodFather's rules because you took his it's protocol method. You have to
//implement that method. You have to do what he says. He doesn't say how, he just says what he wants done. It's up to you in
//your .m file where something has to happen to actually make it happen. It's up to you to make his method happen, in whatever way works.

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//You don't have to create an instance of Second View Controller here. Why? Because it's the destiation view controller. The segue needs to know what view controller that it's going to.
}


//The GodFather is telling you(RootVC) to perform this action. He didn't say how to do it, just "perform an action". RootVC decided to do it this way.
- (void)performAction {
    self.blueView.backgroundColor = [UIColor redColor];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    //You set the instance of SecondViewController to point to/be the destination view controller. Now you also set the second view controller delegate to be the Root View Controller.
    SecondViewController *svc = segue.destinationViewController;
    svc.delegate = self;
}


@end
