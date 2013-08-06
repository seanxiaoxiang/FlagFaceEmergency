//
//  FaceView.m
//  FlagFaceEmergency
//
//  Created by admin on 13-8-6.
//  Copyright (c) 2013年 wesleyxiao. All rights reserved.
//

#import "FaceView.h"

@implementation FaceView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch * touch=[touches anyObject];
    point=[touch locationInView:self];
    
    
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch * touch=[touches anyObject];
    CGPoint  currentLocation=[touch locationInView:self];
    
    CGRect frame=self.frame;
    frame.origin.x+=currentLocation.x-point.x;
    frame.origin.y+=currentLocation.y-point.y;
    
    self.frame=frame;
    
}


@end
