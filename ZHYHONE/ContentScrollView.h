//
//  ContentScrollView.h
//  ZHYHONE
//
//  Created by Junchao Yu on 12-9-10.
//  Copyright (c) 2012年 BUAA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ContentScrollView : UIScrollView < UIScrollViewDelegate >{
    int list;
    int num;

    NSMutableArray * contents;
}

@property (nonatomic, retain) NSMutableArray * contents;

-(id)initWithList:(int)tList
              Num:(int)tNum
              Ani:(BOOL)ani;

@end
