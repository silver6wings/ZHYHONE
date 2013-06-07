//
//  CalcVC.h
//  ZHYHONE
//
//  Created by silver6wings silver6wings on 12-9-26.
//  Copyright (c) 2012年 BUAA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalcVC : UIButton{
    
    UILabel * lb00;
    UILabel * lb01;
    UILabel * lb02;
    UILabel * lb03;
    UILabel * lb04;
    UILabel * lb05;
    UILabel * lb06;
    UILabel * lb07;
    UILabel * lb08;
    UILabel * lb09;
    UILabel * lb10;
    UILabel * lb11;
    
    double d00;
    double d01;
    double d02;
    double d03;
    double d04;
    double d05;
    double d06;
    double d07;
    double d08;
    double d09;
    double d10;
    double d11;
    
    double * mdf;
    double dotBase;
    BOOL isDoting;
    
    UIImageView * imgNums;
    
    UIView * uvw;
    
    UIButton * btNums[12];
}


@end
