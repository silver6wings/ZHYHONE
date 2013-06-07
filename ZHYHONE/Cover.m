//
//  Cover.m
//  ZHYHONE
//
//  Created by silver6wings silver6wings on 12-9-8.
//  Copyright (c) 2012年 BUAA. All rights reserved.
//

#import "Cover.h"
#import "ContentVC.h"
#import "ShareData.h"

@implementation Cover

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
        
        imgvContent = [[UIImageView alloc] initWithImage:[UIImage imageNamed:tFileName]];
        [[ShareData sharedInstance].menuVC.view addSubview:imgvContent];
        imgvContent.frame = CGRectMake(0, 0, 1024, 748);
         
        [UIView beginAnimations:@"xcodeImageAnimation"
                        context:imgvContent];
        
        [UIView setAnimationDuration:0.5f];
        [UIView setAnimationDelegate:self];
        [UIView setAnimationDidStopSelector:@selector(endContent)];
        
        imgvContent.frame = CGRectMake(357, 200, 310, 230);
        [UIView commitAnimations];
        
        // release content
        [[ShareData sharedInstance].contentSV removeFromSuperview];
        [ShareData sharedInstance].contentSV = nil;
        
        [[ShareData sharedInstance].contentLV removeFromSuperview];
        [ShareData sharedInstance].contentLV = nil;
        
    }
    
    // release detail content
    if ([ShareData sharedInstance].detailVC != nil) {
        [[ShareData sharedInstance].detailVC.view removeFromSuperview];
        [[ShareData sharedInstance].detailVC release];
        [ShareData sharedInstance].detailVC = nil;
    }
}

- (void) endContent{
    [imgvContent removeFromSuperview];
    [imgvContent release];
    imgvContent = nil;
}

@end
