//
//  Door.h
//  ZHYHONE
//
//  Created by silver6wings silver6wings on 12-9-12.
//  Copyright (c) 2012年 BUAA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Door : UIButton{
    int list;
    int num;
}

- (id)initWithList:(int)tList 
               Num:(int)tNum;

@end
