//
//  EnterAdjectiveViewController.m
//  WordPlay
//
//  Created by Edil Ashimov on 7/20/15.
//  Copyright (c) 2015 Edil Ashimov. All rights reserved.
//

#import "EnterAdjectiveViewController.h"
#import "ResultsViewController.h"
@interface EnterAdjectiveViewController () <UIPopoverPresentationControllerDelegate>
@property (weak, nonatomic) IBOutlet UITextField *adjectiveTextField;


@end

@implementation EnterAdjectiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.adjectiveTextField becomeFirstResponder];

}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    if ([self.adjectiveTextField.text length] == 0){
        return NO;
    } else {
        return YES;
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    if ([segue.identifier isEqualToString: @"popover"]) {
        ResultsViewController *dvc = segue.destinationViewController;
        dvc.name = self.name;
        dvc.adjective = self.adjectiveTextField.text;

        // This is the important part
        UIPopoverPresentationController * popPC = dvc.popoverPresentationController;
        popPC.delegate = self;
    }
}
- (UIModalPresentationStyle) adaptivePresentationStyleForPresentationController: (UIPresentationController * ) controller {
    return UIModalPresentationNone;
}

@end
