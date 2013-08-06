//
//  MainViewController.m
//  FlagFaceEmergency
//
//  Created by admin on 13-8-6.
//  Copyright (c) 2013年 wesleyxiao. All rights reserved.
//

#import "MainViewController.h"

#import "FaceView.h"
#import "FacePoints.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];


    FacePoints * points=[[FacePoints alloc]init];
    
    [points addToSuperView:self.view];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
