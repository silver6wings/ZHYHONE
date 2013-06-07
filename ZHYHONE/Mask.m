//
//  Mask.m
//  ZHYH1
//
//  Created by silver6wings silver6wings on 12-9-6.
//  Copyright (c) 2012年 BUAA. All rights reserved.
//

#import "Mask.h"
#import "ShareData.h"
#import "ContentScrollView.h"
#import "ContentListView.h"
#import "ContentVC.h"
#import "MenuVC.h"

@implementation Mask


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
        if (list < 3) {
            [[ShareData sharedInstance].menuVC.msv setContentOffset:CGPointMake(320 * list, 0) animated:NO];
            [[[ShareData sharedInstance].menuVC.msv.menuList objectAtIndex:list] setContentOffset:CGPointMake(0, 235 * num) 
                                                                                         animated:NO];
            [[ShareData sharedInstance] setMenuListEnable:list];
        } else {
            [[ShareData sharedInstance].menuVC.msv setContentOffset:CGPointMake(320 * list - 320, 0) animated:NO];
            [[[ShareData sharedInstance].menuVC.msv.menuList objectAtIndex:list-1] setContentOffset:CGPointMake(0, 235 * num) 
                                                                                         animated:NO];
            [[ShareData sharedInstance] setMenuListEnable:list-1];
        }
        
        
        NSString * tFileName = [[ShareData sharedInstance] getFileNameByHead:@"content" List:list Num:num];
        
        imgvContent = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:tFileName]] autorelease];
        imgvContent.frame = CGRectMake(357, 200, 310, 230);
        [[ShareData sharedInstance].menuVC.view addSubview:imgvContent];
        
        [UIView beginAnimations:@"xcodeImageAnimation"
                        context:imgvContent];
        
        [UIView setAnimationDuration:0.5f];
        [UIView setAnimationDelegate:self];
        [UIView setAnimationDidStopSelector:@selector(startContent)];
        
        imgvContent.frame = CGRectMake(0, 0, 1024, 748);
        [UIView commitAnimations];
    }
}

-(IBAction)startContent{
    
    [imgvContent removeFromSuperview];
    imgvContent = nil;
    
    /*
    ContentScrollView * csv = [[[ContentScrollView alloc] initWithList:list Num:num] autorelease];
    csv.frame = CGRectMake(0, 0, 1024, 748);
    [[ShareData sharedInstance].menuVC.view addSubview:csv];
    */
    
    ContentListView * clv = [[[ContentListView alloc] initWithList:list Num:num] autorelease];
    [[ShareData sharedInstance].menuVC.view addSubview:clv];
}

@end
