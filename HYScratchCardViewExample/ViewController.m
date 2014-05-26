//
//  ViewController.m
//  HYScratchCardViewExample
//
//  Created by Shadow on 14-5-26.
//  Copyright (c) 2014年 Shadow. All rights reserved.
//

#import "ViewController.h"
#import "HYScratchCardView.h"

@interface ViewController ()

@property (nonatomic, strong) HYScratchCardView *scratchCardView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.scratchCardView = [[HYScratchCardView alloc]initWithFrame:CGRectMake(85, 100, 150, 150)];
    self.scratchCardView.image = [UIImage imageNamed:@"lottery_award"];
    [self.view addSubview:self.scratchCardView];
    
    self.scratchCardView.completion = ^(id userInfo) {
        UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"恭喜"
                                                           message:@"恭喜中奖."
                                                          delegate:nil
                                                 cancelButtonTitle:@"确定"
                                                 otherButtonTitles:nil];
        [alertView show];
    };
}
- (IBAction)resetButtonClick:(UIButton *)sender {
    [self.scratchCardView reset];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
