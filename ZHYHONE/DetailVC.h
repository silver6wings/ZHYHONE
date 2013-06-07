//
//  DetailVC.h
//  ZHYHONE
//
//  Created by silver6wings silver6wings on 12-9-9.
//  Copyright (c) 2012年 BUAA. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailScrollView.h"

@interface DetailVC : UIViewController{
    int list;
    int num;
    int page;

    DetailScrollView * dsv;
    
    UIImageView * imgvIntro;
    UIImageView * imgvSmall;
    UIImageView * imgvLight;
    UIImageView * imgvLight2;
    
    UIButton * bts1;
    UIButton * bts2;
    UIButton * bts3;
    UIButton * bts4;
    UIButton * bts5;
    UIButton * bts6;
    
    // tools
    bool isLeft;
    int elementL;
    int elementM;
    int elementR;
    
    bool addDoor;
    
    
    NSString * tFileName2;
}

- (id)initWithList:(int)tList 
               Num:(int)tNum
              Page:(int)tPage;

@end
