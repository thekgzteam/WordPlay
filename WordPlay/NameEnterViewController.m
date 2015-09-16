//
//  NameEnterViewController.m
//  WordPlay
//
//  Created by Edil Ashimov on 7/21/15.
//  Copyright (c) 2015 Edil Ashimov. All rights reserved.
//

#import "NameEnterViewController.h"
#import "EnterAdjectiveViewController.h"

@interface NameEnterViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;


@end

@implementation NameEnterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    if ([self.nameTextField.text length] == 0){
        return NO;
    } else {
        return YES;
    }

}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    EnterAdjectiveViewController *dvc = segue.destinationViewController;
    dvc.name = self.nameTextField.text;

}
@end
