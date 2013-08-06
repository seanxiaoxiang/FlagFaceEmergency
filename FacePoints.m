//
//  FacePoints.m
//  FlagFaceEmergency
//
//  Created by admin on 13-8-6.
//  Copyright (c) 2013年 wesleyxiao. All rights reserved.
//

#import "FacePoints.h"
#import "FaceView.h"

#define DEFAULT_FRAME CGRectMake(0, 0, 10, 10) 

@implementation FacePoints
-(id)init
{
    if ([super init]!=nil) {
        face=[self loadArrayWithMutableArray:[[NSMutableArray alloc]init] withCount:21];
        leftEye=[self loadArrayWithMutableArray:[[NSMutableArray alloc]init] withCount:8];
        leftEyeBrow=[self loadArrayWithMutableArray:[[NSMutableArray alloc]init] withCount:8];
        rightEye=[self loadArrayWithMutableArray:[[NSMutableArray alloc]init] withCount:8];
        rightEyeBrow=[self loadArrayWithMutableArray:[[NSMutableArray alloc]init] withCount:8];
        nose=[self loadArrayWithMutableArray:[[NSMutableArray alloc]init] withCount:13];
        mouth=[self loadArrayWithMutableArray:[[NSMutableArray alloc]init] withCount:22];
        return self;
    }
    return nil;
}

-(NSArray *)loadArrayWithMutableArray:(NSMutableArray *)muarray withCount:(NSInteger) count;
{
    for (int i=0; i<count; i++) {
        FaceView * tmpView=[[FaceView alloc]initWithFrame:DEFAULT_FRAME];
        tmpView.backgroundColor=[UIColor yellowColor];
        [muarray addObject:tmpView];
    }
    return muarray;
}

-(void) addToSuperView:(UIView *) superView
{
    for (FaceView * faceView in face) {
        [superView addSubview:faceView];
    }
    for (FaceView * faceView in leftEye) {
        [superView addSubview:faceView];
    }
    for (FaceView * faceView in leftEyeBrow) {
        [superView addSubview:faceView];
    }
    for (FaceView * faceView in rightEye) {
        [superView addSubview:faceView];
    }
    for (FaceView * faceView in rightEyeBrow) {
        [superView addSubview:faceView];
    }
    for (FaceView * faceView in nose) {
        [superView addSubview:faceView];
    }
    for (FaceView * faceView in mouth) {
        [superView addSubview:faceView];
    }
}

@end
