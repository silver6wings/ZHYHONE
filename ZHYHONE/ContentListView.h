//
//  ContentListView.h
//  ZHYHONE
//
//  Created by silver6wings silver6wings on 12-9-20.
//  Copyright (c) 2012年 BUAA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ContentScrollView.h"

@interface ContentListView : UIScrollView < UIScrollViewDelegate >{
    int list;
    int num;   
    
    NSMutableArray * lists;
    
    ContentScrollView * csv0;
    ContentScrollView * csv1;
    ContentScrollView * csv2;
}

@property (nonatomic, retain) NSMutableArray * lists;

- (id)initWithList:(int)tList
               Num:(int)tNum;

@end
