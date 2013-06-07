//
//  ShareData.h
//  ZHYH1
//
//  Created by silver6wings silver6wings on 12-9-6.
//  Copyright (c) 2012年 BUAA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MenuVC.h"
#import "ContentListView.h"
#import "ContentScrollView.h"
#import "ContentVC.h"
#import "DetailVC.h"
#import "ZoomPicture.h"

@interface ShareData : NSObject{
    MenuVC * menuVC;
    
    ContentListView * contentLV;
    ContentScrollView * contentSV;
    ContentVC * contentVC;
    
    DetailVC * detailVC;
}

@property (nonatomic, retain) MenuVC * menuVC;
@property (nonatomic, retain) ContentListView * contentLV;
@property (nonatomic, retain) ContentScrollView * contentSV;
@property (nonatomic, retain) ContentVC * contentVC;
@property (nonatomic, retain) DetailVC * detailVC;


+ (ShareData *) sharedInstance;

- (NSString *)getFileNameByHead:(NSString *)head
                           List:(int)list
                            Num:(int)num;

// Content

- (NSString *)getFileNameByHead:(NSString *)head
                           List:(int)list
                            Num:(int)num
                        Element:(int)ele;

- (NSString *)getFileNameByHead:(NSString *)head
                           List:(int)list
                            Num:(int)num
                           Left:(BOOL)isLeft
                        Element:(int)ele;

// Detail

- (NSString *)getFileNameByHead:(NSString *)head
                           List:(int)list
                            Num:(int)num
                           Page:(int)page
                        Element:(int)ele;

- (NSString *)getFileNameByHead:(NSString *)head
                           List:(int)list
                            Num:(int)num
                           Page:(int)page
                           Left:(BOOL)isLeft
                        Element:(int)ele;

// Layer

- (NSString *)getFileNameByHead:(NSString *)head 
                           List:(int)list 
                            Num:(int)num
                          Layer:(int)layer
                        Element:(int)element;

- (void)setMenuListEnable:(int)list;

- (void)removeMenuVCarray;

@end
