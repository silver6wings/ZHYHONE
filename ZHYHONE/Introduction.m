//
//  Introduction.m
//  ZHYHONE
//
//  Created by Junchao Yu on 12-9-10.
//  Copyright (c) 2012年 BUAA. All rights reserved.
//

#import "Introduction.h"

@implementation Introduction

-(id)initWithType:(int)tType{
    self = [super init];
    if(self){
        type = tType;
        
        if(type == 1){
            [self setImage:[UIImage imageNamed:@"intro.png"] forState:UIControlStateNormal];
            [self setAlpha:1.0f];
        }
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    if (type == 1) {
        UITouch * touch = [[event allTouches] anyObject];        
        if ([touch tapCount] == 2) {  
            [UIView beginAnimations:@"xcodeImageAnimation"
                            context:self];
            
            [UIView setAnimationDuration:0.5f];
            [UIView setAnimationDelegate:self];
            
            [self setAlpha:0.0f];
            [UIView setAnimationDidStopSelector:@selector(releaseSelf)];
            [UIView commitAnimations];
        }
    }
}

- (void) releaseSelf{
    [self removeFromSuperview];
}

@end
