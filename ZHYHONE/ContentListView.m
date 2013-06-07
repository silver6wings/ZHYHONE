//
//  ContentListView.m
//  ZHYHONE
//
//  Created by silver6wings silver6wings on 12-9-20.
//  Copyright (c) 2012年 BUAA. All rights reserved.
//

#import "ContentListView.h"
#import "ShareData.h"

@implementation ContentListView
@synthesize lists;

- (id)initWithList:(int)tList
              Num:(int)tNum{
    
    if(self = [super init]){
        list = tList;
        num = tNum;
        self.lists = [NSMutableArray array];   
        
        if([ShareData sharedInstance].contentLV != nil){
            [[ShareData sharedInstance].contentLV removeFromSuperview];
            [[ShareData sharedInstance].contentLV release];
            [ShareData sharedInstance].contentLV = nil;
        }     
        [ShareData sharedInstance].contentLV = self;
        
        self.delegate = self;
        self.bounces = NO;
        self.pagingEnabled = YES;
        self.showsVerticalScrollIndicator = NO;
        self.showsHorizontalScrollIndicator = NO;
        self.frame = CGRectMake(0, 0, 1024, 748);
        
        [self refreshContent];
    }
    return self;
}

-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    
    int change = (int)scrollView.contentOffset.x / 1024 - 1;

    if (list == 0) change++;
    list += change;
    
    //fuck
    if (list == 3) {
        if (change > 0) list = 4;
        else list = 2;
    }
    
    if (change != 0) {
        num = 0;
        [self refreshContent];
    }
}

- (void)refreshContent{
    
    for (UIView * uv in [self subviews]) {
        [uv removeFromSuperview];
    }
    
    csv0 = nil;
    csv1 = nil;
    csv2 = nil;
    
    if ( list == 0 ) {
        self.contentSize = CGSizeMake(1024 * 2, 748);
        self.contentOffset = CGPointMake(0, 0);
        
        csv1 = [[ContentScrollView alloc] initWithList:0 Num:num Ani:YES];
        csv1.frame = CGRectMake(0, 0, 1024, 748);
        [self addSubview:csv1];
        [csv1 release];
        
        csv2 = [[ContentScrollView alloc] initWithList:1 Num:0 Ani:NO];
        csv2.frame = CGRectMake(1024, 0, 1024, 748);
        [self addSubview:csv2];
        [csv2 release];
        
    } else if (list == 13){
        
        self.contentSize = CGSizeMake(1024 * 2, 748);
        self.contentOffset = CGPointMake(1024, 0);
        
        csv0 = [[ContentScrollView alloc] initWithList:12 Num:0 Ani:NO];
        csv0.frame = CGRectMake(0, 0, 1024, 748);
        [self addSubview:csv0];
        [csv0 release];
        
        csv1 = [[ContentScrollView alloc] initWithList:13 Num:num Ani:YES];
        csv1.frame = CGRectMake(1024, 0,  1024, 748);
        [self addSubview:csv1];
        [csv1 release];
        
    //fuck
    } else if (list == 2){
        
        self.contentSize = CGSizeMake(1024 * 3, 748);
        self.contentOffset = CGPointMake(1024, 0);
        
        csv0 = [[ContentScrollView alloc] initWithList:list-1 Num:0 Ani:NO];
        csv0.frame = CGRectMake(0, 0, 1024, 748);
        [self addSubview:csv0];
        [csv0 release];
        
        csv1 = [[ContentScrollView alloc] initWithList:list Num:num Ani:YES];
        csv1.frame = CGRectMake(1024, 0, 1024, 748);
        [self addSubview:csv1];
        [csv1 release];
        
        csv2 = [[ContentScrollView alloc] initWithList:list+2 Num:0 Ani:NO];
        csv2.frame = CGRectMake(2048, 0, 1024, 748);
        [self addSubview:csv2];
        [csv2 release];
    //fuck
    } else if (list == 4){
        
        self.contentSize = CGSizeMake(1024 * 3, 748);
        self.contentOffset = CGPointMake(1024, 0);
        
        csv0 = [[ContentScrollView alloc] initWithList:list-2 Num:0 Ani:NO];
        csv0.frame = CGRectMake(0, 0, 1024, 748);
        [self addSubview:csv0];
        
        csv1 = [[ContentScrollView alloc] initWithList:list Num:num Ani:YES];
        csv1.frame = CGRectMake(1024, 0, 1024, 748);
        [self addSubview:csv1];
        
        csv2 = [[ContentScrollView alloc] initWithList:list+1 Num:0 Ani:NO];
        csv2.frame = CGRectMake(2048, 0, 1024, 748);
        [self addSubview:csv2];
        
    } else {
        self.contentSize = CGSizeMake(1024 * 3, 748);
        self.contentOffset = CGPointMake(1024, 0);
        
        csv0 = [[ContentScrollView alloc] initWithList:list-1 Num:0 Ani:NO];
        csv0.frame = CGRectMake(0, 0, 1024, 748);
        [self addSubview:csv0];
        [csv0 release];
        
        csv1 = [[ContentScrollView alloc] initWithList:list Num:num Ani:YES];
        csv1.frame = CGRectMake(1024, 0, 1024, 748);
        [self addSubview:csv1];
        [csv1 release];
        
        csv2 = [[ContentScrollView alloc] initWithList:list+1 Num:0 Ani:NO];
        csv2.frame = CGRectMake(2048, 0, 1024, 748);
        [self addSubview:csv2];
        [csv2 release];
    } 
}

@end
