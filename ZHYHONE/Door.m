//
//  Door.m
//  ZHYHONE
//
//  Created by silver6wings silver6wings on 12-9-12.
//  Copyright (c) 2012年 BUAA. All rights reserved.
//

#import "Door.h"
#import "ShareData.h"

@implementation Door

- (id)initWithList:(int)tList 
               Num:(int)tNum{
    
    self = [super init];
    if (self) {    
        list = tList;
        num = tNum;
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch * touch = [[event allTouches] anyObject];
    if ([touch tapCount] == 2) {           
        [[ShareData sharedInstance].detailVC.view removeFromSuperview];
        [[ShareData sharedInstance].detailVC release];
        [ShareData sharedInstance].detailVC = nil;
    }
}

@end
