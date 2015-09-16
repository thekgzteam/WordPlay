//
//  ResultsViewController.m
//  WordPlay
//
//  Created by Edil Ashimov on 7/20/15.
//  Copyright (c) 2015 Edil Ashimov. All rights reserved.
//

#import "ResultsViewController.h"
#import "EnterAdjectiveViewController.h"
#import "NameEnterViewController.h"
@interface ResultsViewController ()

@property (weak, nonatomic) IBOutlet UITextView *resultsTextView;

@end

@implementation ResultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    self.resultsTextView.text = [NSString stringWithFormat:@"%@ went to the %@ store.", self.name, self.adjective];

}

@end
