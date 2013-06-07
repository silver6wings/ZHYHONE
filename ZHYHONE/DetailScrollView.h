//
//  DetailScrollView.h
//  ZHYHONE
//
//  Created by silver6wings silver6wings on 12-9-10.
//  Copyright (c) 2012年 BUAA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailScrollView : UIScrollView <UIScrollViewDelegate>{
    int x0,x1,x2,x3,x4;
    UIScrollView * usv0;
    UIScrollView * usv1;
    UIScrollView * usv2;
    UIScrollView * usv3;
    UIScrollView * usv4;
}

-(id)initWithScrollViewN0:(UIScrollView *)sv0
                       N1:(UIScrollView *)sv1
                       N2:(UIScrollView *)sv2
                       N3:(UIScrollView *)sv3
                       N4:(UIScrollView *)sv4
                       X0:(int)x0
                       X1:(int)x1 
                       X2:(int)x2
                       X3:(int)x3
                       X4:(int)x4;

@end
