//
//  DetailScrollView.m
//  ZHYHONE
//
//  Created by silver6wings silver6wings on 12-9-10.
//  Copyright (c) 2012年 BUAA. All rights reserved.
//

#import "DetailScrollView.h"

@implementation DetailScrollView

-(id)initWithScrollViewN0:(UIScrollView *)sv0
                       N1:(UIScrollView *)sv1
                       N2:(UIScrollView *)sv2
                       N3:(UIScrollView *)sv3
                       N4:(UIScrollView *)sv4
                       X0:(int)tx0
                       X1:(int)tx1 
                       X2:(int)tx2
                       X3:(int)tx3
                       X4:(int)tx4{
    
    if(self = [super init]){
        usv0 = sv0;
        usv1 = sv1;
        usv2 = sv2;
        usv3 = sv3;
        usv4 = sv4;
        
        x0 = tx0;
        x1 = tx1;
        x2 = tx2;
        x3 = tx3;
        x4 = tx4;
        
        self.delegate = self;
        self.pagingEnabled = YES;
        self.bounces = NO;

    }
    return self;
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    [usv0 setContentOffset:CGPointMake(0, self.contentOffset.y * (748 + x0) / 748)];
    [usv1 setContentOffset:CGPointMake(0, self.contentOffset.y * (748 + x1) / 748)];
    [usv2 setContentOffset:CGPointMake(0, self.contentOffset.y * (748 + x2) / 748)];
    [usv3 setContentOffset:CGPointMake(0, self.contentOffset.y * (748 + x3) / 748)];
    [usv4 setContentOffset:CGPointMake(0, self.contentOffset.y * (748 + x4) / 748)];    
}

@end
