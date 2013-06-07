//
//  ShareData.m
//  ZHYH1
//
//  Created by silver6wings silver6wings on 12-9-6.
//  Copyright (c) 2012年 BUAA. All rights reserved.
//

#import "ShareData.h"

@implementation ShareData
@synthesize menuVC, contentSV, contentLV, contentVC, detailVC;

static ShareData * _instance;    

+ (ShareData *)sharedInstance{
    @synchronized(self) {
        if (_instance == nil) {
            _instance = [[self alloc] init];
        }
    }
    return _instance;
}

+ (id)allocWithZone:(NSZone *)zone{	
    @synchronized(self) {
        if (_instance == nil) {
            _instance = [super allocWithZone:zone];			
            return _instance;
        }
    }
    return nil;
}
- (id)copyWithZone:(NSZone *)zone{ 
    return self; 
}
- (id)retain{ 
    return self; 
}
- (unsigned)retainCount{ 
    return UINT_MAX; 
}
- (id)autorelease{
    return self;	
}

- (NSString *)getFileNameByHead:(NSString *)head
                          List:(int)list
                           Num:(int)num{
    
    NSString * tFileName;
    int i = list, j = num;
    if (i < 10) {
        if (j < 10)
            tFileName = [NSString stringWithFormat:@"%@_0%d_0%d", head, i ,j];
        else 
            tFileName = [NSString stringWithFormat:@"%@_0%d_%d", head,i ,j];
        
    } else {
        
        if (j < 10)
            tFileName = [NSString stringWithFormat:@"%@_%d_0%d", head, i ,j];
        else 
            tFileName = [NSString stringWithFormat:@"%@_%d_%d", head, i ,j];
    }
    
    return tFileName;
}

// Content

- (NSString *)getFileNameByHead:(NSString *)head
                           List:(int)list
                            Num:(int)num
                        Element:(int)ele{
    
    NSString * tFileName;
    int i = list, j = num;
    if (i < 10) {
        if (j < 10)
            tFileName = [NSString stringWithFormat:@"%@_0%d_0%d", head, i ,j];
        else 
            tFileName = [NSString stringWithFormat:@"%@_0%d_%d", head,i ,j];
        
    } else {
        
        if (j < 10)
            tFileName = [NSString stringWithFormat:@"%@_%d_0%d", head, i ,j];
        else 
            tFileName = [NSString stringWithFormat:@"%@_%d_%d", head, i ,j];
    }
    
    if(ele < 10){
            tFileName = [NSString stringWithFormat:@"%@_m_0%d", tFileName, ele];
    } else {
            tFileName = [NSString stringWithFormat:@"%@_m_%d", tFileName, ele];
    }
    return tFileName;
}


- (NSString *)getFileNameByHead:(NSString *)head
                          List:(int)list
                           Num:(int)num
                          Left:(BOOL)isLeft
                       Element:(int)ele{
    
    NSString * tFileName;
    int i = list, j = num;
    if (i < 10) {
        if (j < 10)
            tFileName = [NSString stringWithFormat:@"%@_0%d_0%d", head, i ,j];
        else 
            tFileName = [NSString stringWithFormat:@"%@_0%d_%d", head,i ,j];
        
    } else {
        
        if (j < 10)
            tFileName = [NSString stringWithFormat:@"%@_%d_0%d", head, i ,j];
        else 
            tFileName = [NSString stringWithFormat:@"%@_%d_%d", head, i ,j];
    }

    if(ele < 10){
        if (isLeft) {
            tFileName = [NSString stringWithFormat:@"%@_l_0%d", tFileName, ele];
        } else {
            tFileName = [NSString stringWithFormat:@"%@_r_0%d", tFileName, ele];
        }
    } else {
        if (isLeft) {
            tFileName = [NSString stringWithFormat:@"%@_l_%d", tFileName, ele];
        } else {
            tFileName = [NSString stringWithFormat:@"%@_r_%d", tFileName, ele];
        }  
    }
    return tFileName;
}

// Detail

- (NSString *)getFileNameByHead:(NSString *)head
                           List:(int)list
                            Num:(int)num
                           Page:(int)page
                        Element:(int)ele{
    
    NSString * tFileName;
    int i = list, j = num;
    if (i < 10) {
        if (j < 10)
            tFileName = [NSString stringWithFormat:@"%@_0%d_0%d", head, i ,j];
        else 
            tFileName = [NSString stringWithFormat:@"%@_0%d_%d", head,i ,j];
        
    } else {
        
        if (j < 10)
            tFileName = [NSString stringWithFormat:@"%@_%d_0%d", head, i ,j];
        else 
            tFileName = [NSString stringWithFormat:@"%@_%d_%d", head, i ,j];
    }
    
    if (page < 10) {
        tFileName = [NSString stringWithFormat:@"%@_0%d", tFileName, page];
    } else {
        tFileName = [NSString stringWithFormat:@"%@_%d", tFileName, page];
    }
    
    if(ele < 10){
        tFileName = [NSString stringWithFormat:@"%@_m_0%d", tFileName, ele];
    } else {
        tFileName = [NSString stringWithFormat:@"%@_m_%d", tFileName, ele];
    }
    return tFileName;
}


- (NSString *)getFileNameByHead:(NSString *)head
                           List:(int)list
                            Num:(int)num
                           Page:(int)page
                           Left:(BOOL)isLeft
                        Element:(int)ele{
    
    NSString * tFileName;
    int i = list, j = num;
    if (i < 10) {
        if (j < 10)
            tFileName = [NSString stringWithFormat:@"%@_0%d_0%d", head, i ,j];
        else 
            tFileName = [NSString stringWithFormat:@"%@_0%d_%d", head,i ,j];
        
    } else {
        if (j < 10)
            tFileName = [NSString stringWithFormat:@"%@_%d_0%d", head, i ,j];
        else 
            tFileName = [NSString stringWithFormat:@"%@_%d_%d", head, i ,j];
    }
    
    if (page < 10) {
        tFileName = [NSString stringWithFormat:@"%@_0%d", tFileName, page];
    } else {
        tFileName = [NSString stringWithFormat:@"%@_%d", tFileName, page];
    }
    
    if(ele < 10){
        if (isLeft) {
            tFileName = [NSString stringWithFormat:@"%@_l_0%d", tFileName, ele];
        } else {
            tFileName = [NSString stringWithFormat:@"%@_r_0%d", tFileName, ele];
        }
    } else {
        if (isLeft) {
            tFileName = [NSString stringWithFormat:@"%@_l_%d", tFileName, ele];
        } else {
            tFileName = [NSString stringWithFormat:@"%@_r_%d", tFileName, ele];
        }  
    }
    return tFileName;
}

// Layer

- (NSString *)getFileNameByHead:(NSString *)head 
                           List:(int)list 
                            Num:(int)num
                          Layer:(int)layer
                        Element:(int)element{
    
    NSString * result = head;
    
    if (list < 10) result = [NSString stringWithFormat:@"%@_0%d", result, list];
    else result = [NSString stringWithFormat:@"%@_%d", result, list];
    
    if (num < 10) result = [NSString stringWithFormat:@"%@_0%d", result, num];
    else result = [NSString stringWithFormat:@"%@_%d", result, num];
    
    if (layer < 10) result = [NSString stringWithFormat:@"%@_0%d", result, layer];
    else result = [NSString stringWithFormat:@"%@_%d", result, layer];
    
    if (element < 10) result = [NSString stringWithFormat:@"%@_0%d", result, element];
    else result = [NSString stringWithFormat:@"%@_%d", result, element];
    
    return result;
}



- (void)setMenuListEnable:(int)list{
    for (UIScrollView * tus in menuVC.msv.menuList) {
        tus.scrollEnabled = NO;
    }
    [[menuVC.msv.menuList objectAtIndex:list] setScrollEnabled:YES];
}

- (void)removeMenuVCarray{
    for (UIView * uv in menuVC.viewCanRemove) {
        [uv removeFromSuperview];
    }
    [menuVC.viewCanRemove removeAllObjects];
}

@end
