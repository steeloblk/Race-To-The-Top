//
//  RTPathView.m
//  Race To The Top
//
//  Created by Warren Deshazo on 11/24/13.
//  Copyright (c) 2013 Circboxx LLC. All rights reserved.
//

#import "RTPathView.h"
#import "RTMountainPath.h"
#import "RTViewController.h"

@implementation RTPathView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self setup];
    }
    return self;
}

-(void)setup
{
    self.backgroundColor = [UIColor clearColor];
    
}

-(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setup];
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
   for (UIBezierPath *path in [RTMountainPath mountainPathsForRect:self.bounds])
   {
       [[UIColor blackColor] setStroke];
       [path stroke];
   }
}


@end
