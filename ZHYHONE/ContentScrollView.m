//
//  ContentScrollView.m
//  ZHYHONE
//
//  Created by Junchao Yu on 12-9-10.
//  Copyright (c) 2012年 BUAA. All rights reserved.
//

#import "ContentScrollView.h"
#import "ContentVC.h"
#import "ShareData.h"

@implementation ContentScrollView
@synthesize contents;

//static int menuCount = 14;
static int pageCount[14] = {4,4,2,1,15,2,2,2,15,16,2,30,6,1};

-(id)initWithList:(int)tList
              Num:(int)tNum
              Ani:(BOOL)ani{
    
    if (self = [super init]) {
        /*
        if([ShareData sharedInstance].contentSV != nil){
            [[ShareData sharedInstance].contentSV removeFromSuperview];
            [[ShareData sharedInstance].contentSV release];
            [ShareData sharedInstance].contentSV = nil;
        }
        */
        [ShareData sharedInstance].contentSV = self;
        
        list = tList;
        num = tNum;
        self.contents = [NSMutableArray array];   
        
        self.delegate = self;
        self.pagingEnabled = YES;
        self.bounces = NO;      
        
        self.showsVerticalScrollIndicator = NO;
        self.showsHorizontalScrollIndicator = NO;
        
        self.contentSize = CGSizeMake(1024, pageCount[list] * 748);
        self.contentOffset = CGPointMake(0, 748 * num);
        
        for (int i = 0; i < pageCount[list]; i++) {
            
            
            ContentVC * cvc = [[ContentVC alloc] initWithList:list Num:i];
            cvc.view.frame = CGRectMake(0, 748 * i, 1024, 748);
            
            [ShareData sharedInstance].contentVC = cvc;
            [self.contents addObject:cvc];
            [cvc release];
            
            
            if (i == num && ani == YES) {
                [cvc fireAnimation];
            }
            
            [self addSubview:cvc.view];
        }
    }
    return self;
}

-(void)dealloc{
    [contents release];
    [super dealloc];
}

-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    
    ContentVC * cvc = [self.contents objectAtIndex:(int)scrollView.contentOffset.y / 748];
    [cvc fireAnimation];
    
}

@end
