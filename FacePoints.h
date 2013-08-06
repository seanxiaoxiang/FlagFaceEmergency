//
//  FacePoints.h
//  FlagFaceEmergency
//
//  Created by admin on 13-8-6.
//  Copyright (c) 2013年 wesleyxiao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FacePoints : NSObject
{
    NSArray * face;                 //21
    NSArray * leftEye;              //8
    NSArray * leftEyeBrow;          //8
    NSArray * rightEye;             //8
    NSArray * rightEyeBrow;         //8
    NSArray * nose;                 //13
    NSArray * mouth;                //22
}
-(id)init;


-(void) addToSuperView:(UIView *) superView;
@end
