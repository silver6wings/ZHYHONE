//
//  Cover.h
//  ZHYHONE
//
//  Created by silver6wings silver6wings on 12-9-8.
//  Copyright (c) 2012年 BUAA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Cover : UIButton{
    int list;
    int num;
    
    UIImageView * imgvContent;
}

- (id)initWithList:(int)tList 
               Num:(int)tNum;

@end
