//
//  ZoomPicture.h
//  ZHYHONE
//
//  Created by silver6wings silver6wings on 12-9-10.
//  Copyright (c) 2012年 BUAA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZoomPicture1 : UIButton{
    CGRect bigFrame;
    NSString * picName;
    
    UIScrollView * usv;
}

-(id)initWithBigFrame:(CGRect)tFrame 
              PicName:(NSString *)tName;

@end