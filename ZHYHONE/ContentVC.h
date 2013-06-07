//
//  ContentVC.h
//  ZHYH1
//
//  Created by silver6wings silver6wings on 12-9-7.
//  Copyright (c) 2012年 BUAA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContentVC : UIViewController{
    int list;
    int num;
        
    UIImageView * imgvContent;
    
    // tools
    bool isLeft;
    int elementL;
    int elementM;
    int elementR;
}

@property (nonatomic, retain) UIImageView * imgvContent;

- (id)initWithList:(int)tList 
               Num:(int)tNum;


- (void)createAnimationWithLeft:(int)l
                          Right:(int)r;

- (void)createAnimationWithMiddle:(int)m;

- (void)removeAllViews;

- (void)fireAnimation;

@end
