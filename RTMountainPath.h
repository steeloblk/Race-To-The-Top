//
//  RTMountainPath.h
//  Race To The Top
//
//  Created by Warren Deshazo on 11/24/13.
//  Copyright (c) 2013 Circboxx LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RTMountainPath : NSObject

+(NSArray *)mountainPathsForRect:(CGRect)rect;

+(UIBezierPath *)tapTargetForPath:(UIBezierPath *)path;

@end
