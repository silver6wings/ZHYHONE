//
//  DetailVC.m
//  ZHYHONE
//
//  Created by silver6wings silver6wings on 12-9-9.
//  Copyright (c) 2012年 BUAA. All rights reserved.
//

#import "DetailVC.h"
#import "ShareData.h"
#import "Door.h"
#import "ZoomPicture.h"
#import "ZoomPicture1.h"

@implementation DetailVC

static int x0 = 0;
static int x1 = 600;
static int x2 = 1200;
static int x3 = 1800;
static int x4 = 4000;

- (id)initWithList:(int)tList 
               Num:(int)tNum
              Page:(int)tPage{
    
    if (self = [super init]) {
        list = tList;
        num = tNum;
        page = tPage;
        
        addDoor = YES;
        
        
        if (list == 0) {
            if (num == 0) {
                [self createLongPageByCount:4];
            }
        }
        
        if (list == 1) {
            if (num == 2) {
                [self createLongPageByCount:6];
                
                ZoomPicture * zp = [[[ZoomPicture alloc] initWithBigFrame:CGRectMake(0, 0, 1024, 748) PicName:@"big_010204.png"] autorelease];
                zp.frame = CGRectMake(362, 748 * 4 + 334, 630, 400);
                [dsv addSubview:zp];
                
                ZoomPicture * zp2 = [[[ZoomPicture alloc] initWithBigFrame:CGRectMake(0, 0, 1024, 748) PicName:@"big_010205.png"] autorelease];
                zp2.frame = CGRectMake(32, 748 * 5 + 272, 800, 460);
                [dsv addSubview:zp2];
            } else if (num == 3) {                
                UIImageView * imgv = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"content_01_03.png"]] autorelease];
                imgv.frame = CGRectMake(0, 0, 1024, 748);
                [self.view addSubview:imgv];
                
                [self createAnimationWithLeft:4 Right:0];
                [self createAnimationWithMiddle:1];
            }
        }
        
        if (list == 2) {
            if (num == 1) {
                addDoor = NO;
                
                Door * btd = [[[Door alloc] initWithList:list Num:num] autorelease];
                btd.frame = CGRectMake(0, 0, 1024, 748);
                [self.view addSubview:btd];
                
                NSString * tFileName = [NSString stringWithFormat:@"detail_02_01_p_0%d.png", page];
                UIImageView * imgv = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:tFileName]] autorelease];
                imgv.frame = CGRectMake(0, 0, 1024, 748);  
                [self.view addSubview:imgv];
                
                if (page == 0) {
                    
                    ZoomPicture1 * zp00 = [[[ZoomPicture1 alloc] initWithBigFrame:CGRectMake(0, 0, 1024, 748) 
                                                                          PicName:@"big_02010000.png"] autorelease];
                    ZoomPicture1 * zp01 = [[[ZoomPicture1 alloc] initWithBigFrame:CGRectMake(0, 0, 1024, 748) 
                                                                          PicName:@"big_02010001.png"] autorelease];
                    ZoomPicture1 * zp02 = [[[ZoomPicture1 alloc] initWithBigFrame:CGRectMake(0, 0, 1024, 748) 
                                                                          PicName:@"big_02010002.png"] autorelease];
                    ZoomPicture1 * zp03 = [[[ZoomPicture1 alloc] initWithBigFrame:CGRectMake(0, 0, 1024, 748) 
                                                                          PicName:@"big_02010003.png"] autorelease];
                    ZoomPicture1 * zp04 = [[[ZoomPicture1 alloc] initWithBigFrame:CGRectMake(0, 0, 1024, 748) 
                                                                          PicName:@"big_02010004.png"] autorelease];
                    ZoomPicture1 * zp05 = [[[ZoomPicture1 alloc] initWithBigFrame:CGRectMake(0, 0, 1024, 748) 
                                                                          PicName:@"big_02010005.png"] autorelease];
                    ZoomPicture1 * zp06 = [[[ZoomPicture1 alloc] initWithBigFrame:CGRectMake(0, 0, 1024, 748) 
                                                                          PicName:@"big_02010006.png"] autorelease];
                    ZoomPicture1 * zp07 = [[[ZoomPicture1 alloc] initWithBigFrame:CGRectMake(0, 0, 1024, 748) 
                                                                          PicName:@"big_02010007.png"] autorelease];
                    ZoomPicture1 * zp08 = [[[ZoomPicture1 alloc] initWithBigFrame:CGRectMake(0, 0, 1024, 748) 
                                                                          PicName:@"big_02010008.png"] autorelease];
                    
                    zp00.frame = CGRectMake(239, 320-15, 50, 30);
                    zp01.frame = CGRectMake(239, 383-15, 50, 30);
                    zp02.frame = CGRectMake(400, 439-15, 50, 30);
                    zp03.frame = CGRectMake(554, 417-15, 50, 30);
                    zp04.frame = CGRectMake(544, 628-17, 50, 30);
                    zp05.frame = CGRectMake(239, 352-15, 50, 30);
                    zp06.frame = CGRectMake(321, 639-17, 50, 30);
                    zp07.frame = CGRectMake(684, 678-20, 50, 30);
                    zp08.frame = CGRectMake(579, 698-20, 50, 30);
                    
                    [self.view addSubview:zp00];       
                    [self.view addSubview:zp01];        
                    [self.view addSubview:zp02];        
                    [self.view addSubview:zp03];        
                    [self.view addSubview:zp04];        
                    [self.view addSubview:zp05];        
                    [self.view addSubview:zp06];        
                    [self.view addSubview:zp07];        
                    [self.view addSubview:zp08];        
                    
                    [self createAnimationWithMiddle:10];  
                    
                } else if (page == 1) {
                    
                    ZoomPicture1 * zp00 = [[[ZoomPicture1 alloc] initWithBigFrame:CGRectMake(0, 0, 1024, 748) 
                                                                          PicName:@"big_02010100.png"] autorelease];
                    
                    
                    ZoomPicture1 * zp01 = [[[ZoomPicture1 alloc] initWithBigFrame:CGRectMake(0, 0, 1024, 748) 
                                                                          PicName:@"big_02010101.png"] autorelease];
                    
                    
                    ZoomPicture1 * zp02 = [[[ZoomPicture1 alloc] initWithBigFrame:CGRectMake(0, 0, 1024, 748) 
                                                                          PicName:@"big_02010102.png"] autorelease];
                    
                    zp00.frame = CGRectMake(601, 348, 50, 30);
                    zp01.frame = CGRectMake(561, 318, 50, 30);
                    zp02.frame = CGRectMake(555, 258, 50, 30);
                    
                    [self.view addSubview:zp00];
                    [self.view addSubview:zp01];
                    [self.view addSubview:zp02];
                    
                    [self createAnimationWithMiddle:4];  
                    
                } else if (page == 2) {
                    
                    ZoomPicture1 * zp01 = [[[ZoomPicture1 alloc] initWithBigFrame:CGRectMake(0, 0, 1024, 748) 
                                                                        PicName:@"big_02010201.png"] autorelease];
                    ZoomPicture1 * zp02 = [[[ZoomPicture1 alloc] initWithBigFrame:CGRectMake(0, 0, 1024, 748) 
                                                                        PicName:@"big_02010202.png"] autorelease];
                    ZoomPicture1 * zp03 = [[[ZoomPicture1 alloc] initWithBigFrame:CGRectMake(0, 0, 1024, 748) 
                                                                        PicName:@"big_02010203.png"] autorelease];
                    ZoomPicture1 * zp04 = [[[ZoomPicture1 alloc] initWithBigFrame:CGRectMake(0, 0, 1024, 748) 
                                                                        PicName:@"big_02010204.png"] autorelease];
                    ZoomPicture1 * zp05 = [[[ZoomPicture1 alloc] initWithBigFrame:CGRectMake(0, 0, 1024, 748) 
                                                                        PicName:@"big_02010205.png"] autorelease];
                    ZoomPicture1 * zp06 = [[[ZoomPicture1 alloc] initWithBigFrame:CGRectMake(0, 0, 1024, 748) 
                                                                        PicName:@"big_02010206.png"] autorelease];
                    ZoomPicture1 * zp07 = [[[ZoomPicture1 alloc] initWithBigFrame:CGRectMake(0, 0, 1024, 748) 
                                                                        PicName:@"big_02010207.png"] autorelease];
                    ZoomPicture1 * zp08 = [[[ZoomPicture1 alloc] initWithBigFrame:CGRectMake(0, 0, 1024, 748) 
                                                                        PicName:@"big_02010208.png"] autorelease];
                    ZoomPicture1 * zp09 = [[[ZoomPicture1 alloc] initWithBigFrame:CGRectMake(0, 0, 1024, 748) 
                                                                        PicName:@"big_02010209.png"] autorelease];
                    ZoomPicture1 * zp10 = [[[ZoomPicture1 alloc] initWithBigFrame:CGRectMake(0, 0, 1024, 748) 
                                                                        PicName:@"big_02010210.png"] autorelease];
                    ZoomPicture1 * zp11 = [[[ZoomPicture1 alloc] initWithBigFrame:CGRectMake(0, 0, 1024, 748) 
                                                                        PicName:@"big_02010211.png"] autorelease];
                                        
                    zp01.frame = CGRectMake(220, 585, 50, 30);  
                    zp02.frame = CGRectMake(275, 450, 50, 30); 
                    zp03.frame = CGRectMake(205, 353, 50, 30);                 
                    zp04.frame = CGRectMake(235, 480, 50, 30); 
                    zp05.frame = CGRectMake(205, 385, 50, 30);
                    zp06.frame = CGRectMake(220, 640, 50, 30);
                    zp07.frame = CGRectMake(315, 360, 50, 30);
                    zp08.frame = CGRectMake(210, 422, 50, 30);
                    zp09.frame = CGRectMake(583, 681, 50, 30);
                    zp10.frame = CGRectMake(222, 671, 50, 30);
                    zp11.frame = CGRectMake(437, 180, 50, 30);                    
                    
                    [self.view addSubview:zp01];
                    [self.view addSubview:zp02];
                    [self.view addSubview:zp03];
                    [self.view addSubview:zp04];
                    [self.view addSubview:zp05];
                    [self.view addSubview:zp06];
                    [self.view addSubview:zp07];
                    [self.view addSubview:zp08];
                    [self.view addSubview:zp09];
                    [self.view addSubview:zp10];
                    [self.view addSubview:zp11];
                    
                    [self createAnimationWithMiddle:13];
                    
                } else if (page == 3) {
                    [self createAnimationWithMiddle:3];
                }
            }
        }
        
        if (list == 4) {
            if (num == 6){
                [self createLongPageByCount:3];
            } else if (num == 7){
                [self createLongPageByCount:6];
            } else if (num == 12){
                [self createLongPageByCount:3];
            } else if (num == 13){
                [self createLongPageByCount:8];
            } else if (num == 14){
                addDoor = NO;
                
                UIImageView * imgv = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"detail_04_14_bg.png"]] autorelease];
                imgv.frame = CGRectMake(0, 0, 1024, 748);
                [self.view addSubview:imgv];
                
                imgvIntro = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"detail_04_14_x_00_00.png"]] autorelease];
                imgvIntro.frame = CGRectMake(0, 0, 1024, 748);
                [self.view addSubview:imgvIntro];
                
                // small menu
                
                imgvSmall = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"detail_04_14_x_00_m.png"]] autorelease];
                imgvSmall.frame = CGRectMake(0, 0, 1024, 748);
                [self.view addSubview:imgvSmall];
                
                
                bts1 = [UIButton buttonWithType:UIButtonTypeCustom];
                bts2 = [UIButton buttonWithType:UIButtonTypeCustom];
                bts3 = [UIButton buttonWithType:UIButtonTypeCustom];
                bts4 = [UIButton buttonWithType:UIButtonTypeCustom];
                bts5 = [UIButton buttonWithType:UIButtonTypeCustom];
                bts6 = [UIButton buttonWithType:UIButtonTypeCustom];
                
                [bts1 addTarget:self action:@selector(bt0414Click:) forControlEvents:UIControlEventTouchUpInside];
                [bts2 addTarget:self action:@selector(bt0414Click:) forControlEvents:UIControlEventTouchUpInside];
                [bts3 addTarget:self action:@selector(bt0414Click:) forControlEvents:UIControlEventTouchUpInside];
                [bts4 addTarget:self action:@selector(bt0414Click:) forControlEvents:UIControlEventTouchUpInside];
                [bts5 addTarget:self action:@selector(bt0414Click:) forControlEvents:UIControlEventTouchUpInside];
                [bts6 addTarget:self action:@selector(bt0414Click:) forControlEvents:UIControlEventTouchUpInside];
                
                [self.view addSubview:bts1];
                [self.view addSubview:bts2];
                [self.view addSubview:bts3];
                [self.view addSubview:bts4];
                [self.view addSubview:bts5];
                [self.view addSubview:bts6];
                
                [self smallMenu:0];
                
                // big menu
                
                UIScrollView * sv = [[[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 190, 748)] autorelease];
                sv.showsVerticalScrollIndicator = NO;
                sv.contentSize = CGSizeMake(190, 860);
                sv.backgroundColor = [UIColor blackColor];
                
                UIImageView * imgvm = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"detail_04_14_menu.png"]] autorelease];
                imgvm.frame = CGRectMake(30, 30, 145, 820);
                [sv addSubview:imgvm];
                
                for (int i = 0; i < 6; i++) {
                    UIButton * bt = [UIButton buttonWithType:UIButtonTypeCustom];
                    bt.frame = CGRectMake(30, 30+140*i, 145, 120);
                    bt.tag = 1400 + 10 * i;
                    [bt addTarget:self action:@selector(bt0414Click:) forControlEvents:UIControlEventTouchUpInside];
                    [sv addSubview:bt];
                }
                
                [self.view addSubview:sv];
                
                imgvLight = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"detail_light.png"]] autorelease];
                imgvLight.frame = CGRectMake(30, 30, 145, 140);
                [sv addSubview:imgvLight];
                
                imgvLight2 = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"detail_light.png"]] autorelease];
                imgvLight2.frame = CGRectZero;
                [self.view addSubview:imgvLight2];
                
                Door * btd = [[[Door alloc] initWithList:list Num:num] autorelease];
                btd.frame = CGRectMake(430, 0, 594, 748);
                [self.view addSubview:btd];
            }
        }
        
        if(addDoor){
            Door * btd = [[[Door alloc] initWithList:list Num:num] autorelease];
            btd.frame = CGRectMake(0, 0, 1024, 748);
            [self.view addSubview:btd];
        }
    }
    return self;
}

#pragma IBAction

- (IBAction)bt0414Click:(id)sender{
    UIButton * tbt = (UIButton *)sender;
    
    
    int ttag = tbt.tag - 1400;
    NSString * tfn = [NSString stringWithFormat:@"detail_04_14_x_0%d_0%d.png", ttag / 10, ttag % 10];
    
    if (ttag % 10 == 0) {        
        imgvLight.frame = CGRectMake(tbt.frame.origin.x, tbt.frame.origin.y, 145, 140);
        imgvLight2.frame = CGRectZero;
    } else {
        imgvLight2.frame = CGRectMake(tbt.frame.origin.x+20, tbt.frame.origin.y-25, 145, 140);
    }
    
    imgvIntro.image = [UIImage imageNamed:tfn];
    
    [self smallMenu:ttag/10];
}
     
- (void)smallMenu:(int)x{
    
    NSString * tfn = [NSString stringWithFormat:@"detail_04_14_x_0%d_m.png", x];
    
    if(x < 3){
        imgvSmall.alpha = 1.0f;
        imgvSmall.image = [UIImage imageNamed:tfn];
    } else {
        imgvSmall.alpha = 0.0f;
    }
    
    bts1.tag = 1401 + 10 * x;
    bts2.tag = 1402 + 10 * x;
    bts3.tag = 1403 + 10 * x;
    bts4.tag = 1404 + 10 * x;
    bts5.tag = 1405 + 10 * x;
    bts6.tag = 1406 + 10 * x;
    
    if (x == 0 || x == 1) {
        int tx = 220, tw = 180, th = 60;
        bts1.frame = CGRectMake(tx, 40, tw, th);
        bts2.frame = CGRectMake(tx, 120, tw, th);
        bts3.frame = CGRectMake(tx, 200, tw, th);
        bts4.frame = CGRectMake(tx, 280, tw, th);
        bts5.frame = CGRectZero;
        bts6.frame = CGRectZero;
    } else if (x == 2) {
        
        int tx = 220, tw = 180, th = 60;
        bts1.frame = CGRectMake(tx, 75, tw, th);
        bts2.frame = CGRectZero;
        bts3.frame = CGRectMake(tx, 155, tw, th);
        bts4.frame = CGRectMake(tx, 355 - 80, tw, th);
        bts5.frame = CGRectMake(tx, 435 - 80, tw, th);
        bts6.frame = CGRectMake(tx, 515 - 80, tw, th);
    } else {
        bts1.frame = CGRectZero;
        bts2.frame = CGRectZero;
        bts3.frame = CGRectZero;
        bts4.frame = CGRectZero;
        bts5.frame = CGRectZero;
        bts6.frame = CGRectZero;
    }
}


#pragma LongPage

- (void)createLongPageByCount:(int)count{
    
    addDoor = NO;
    
    NSString * tFileName;
    UIImageView * imgv;
    
    UIScrollView * usv0 = [[[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 1024, 748)] autorelease];
    UIScrollView * usv1 = [[[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 1024, 748)] autorelease];
    UIScrollView * usv2 = [[[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 1024, 748)] autorelease];
    UIScrollView * usv3 = [[[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 1024, 748)] autorelease];
    UIScrollView * usv4 = [[[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 1024, 748)] autorelease];
    
    usv0.scrollEnabled = NO;
    usv1.scrollEnabled = NO;
    usv2.scrollEnabled = NO;
    usv3.scrollEnabled = NO;
    usv4.scrollEnabled = NO;
    
    usv0.showsVerticalScrollIndicator = NO;
    usv1.showsVerticalScrollIndicator = NO;
    usv2.showsVerticalScrollIndicator = NO;
    usv3.showsVerticalScrollIndicator = NO;
    usv4.showsVerticalScrollIndicator = NO;
    
    usv0.contentSize = CGSizeMake(1024, 748 * count + x0 * (count -1));
    usv1.contentSize = CGSizeMake(1024, 748 * count + x1 * (count -1));
    usv2.contentSize = CGSizeMake(1024, 748 * count + x2 * (count -1));
    usv3.contentSize = CGSizeMake(1024, 748 * count + x3 * (count -1));
    usv4.contentSize = CGSizeMake(1024, 748 * count + x4 * (count -1));
    
    for (int i = 0; i < count; i++) {
        tFileName = [[ShareData sharedInstance] getFileNameByHead:@"detail" List:list Num:num Layer:0 Element:i];
        imgv = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:tFileName]] autorelease];
        imgv.frame = CGRectMake(0, (748 + x0)*i , 1024, 748);
        [usv0 addSubview:imgv];
        
        tFileName = [[ShareData sharedInstance] getFileNameByHead:@"detail" List:list Num:num Layer:1 Element:i];
        imgv = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:tFileName]] autorelease];
        imgv.frame = CGRectMake(0, (748 + x1)*i , 1024, 748);
        [usv1 addSubview:imgv];
        
        tFileName = [[ShareData sharedInstance] getFileNameByHead:@"detail" List:list Num:num Layer:2 Element:i];
        imgv = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:tFileName]] autorelease];
        imgv.frame = CGRectMake(0, (748 + x2)*i , 1024, 748);
        [usv2 addSubview:imgv];
        
        tFileName = [[ShareData sharedInstance] getFileNameByHead:@"detail" List:list Num:num Layer:3 Element:i];
        imgv = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:tFileName]] autorelease];
        imgv.frame = CGRectMake(0, (748 + x3)*i , 1024, 748);
        [usv3 addSubview:imgv];
        
        tFileName = [[ShareData sharedInstance] getFileNameByHead:@"detail" List:list Num:num Layer:4 Element:i];
        imgv = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:tFileName]] autorelease];
        imgv.frame = CGRectMake(0, (748 + x4)*i , 1024, 748);
        [usv4 addSubview:imgv];
    }
              
    
    [self.view addSubview:usv0];
    [self.view addSubview:usv1];
    [self.view addSubview:usv2];
    [self.view addSubview:usv3];
    [self.view addSubview:usv4];
    
    dsv = [[[DetailScrollView alloc] initWithScrollViewN0:usv0 N1:usv1 N2:usv2 N3:usv3 N4:usv4 
                                                       X0:x0 X1:x1 X2:x2 X3:x3 X4:x4] autorelease];
    
    dsv.frame = CGRectMake(0, 0, 1024, 748);
    dsv.contentSize = CGSizeMake(1024, 748 * count);  
    dsv.showsVerticalScrollIndicator = NO;
    
    
    Door * btd = [[[Door alloc] initWithList:list Num:num] autorelease];
    btd.frame = CGRectMake(0, 0, 1024, 748 * count);
    [dsv addSubview:btd];
    
    [self.view addSubview:dsv];
}

#pragma Animation

- (void)createAnimationWithLeft:(int)l Right:(int)r{
    
    elementL = 0;
    for (int i = 0; i < l; i++) {
        [self performSelector:@selector(commitAnimationLeft) withObject:nil afterDelay:0.25 * i];
    }
    
    elementR = 0;
    for (int i = 0; i < r; i++) {
        [self performSelector:@selector(commitAnimationRight) withObject:nil afterDelay:0.25 * i];
    }
    
}

- (void)commitAnimationLeft{
    NSString * tFileName = [[ShareData sharedInstance] getFileNameByHead:@"detail" 
                                                                    List:list Num:num Page:page Left:YES Element:elementL];
    
    UIImageView * imgv2 = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:tFileName]] autorelease];
    [self.view addSubview:imgv2];
    
    imgv2.frame = CGRectMake(-100, 0, 1024, 748);            
    imgv2.alpha = 0.0f;
    
    [UIView beginAnimations:@"LeftInAnimation" context:imgv2];
    [UIView setAnimationDuration:0.5f];
    
    imgv2.frame = CGRectMake(0, 0, 1024, 748);
    imgv2.alpha = 1.0f;
    
    [UIView commitAnimations];
    elementL ++;
}

- (void)commitAnimationRight{
    NSString * tFileName = [[ShareData sharedInstance] getFileNameByHead:@"detail" 
                                                                    List:list Num:num Page:page Left:YES Element:elementL];
    
    UIImageView * imgv4 = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:tFileName]] autorelease];
    [self.view addSubview:imgv4];
    
    imgv4.frame = CGRectMake(100, 0, 1024, 748);            
    imgv4.alpha = 0.0f;
    
    [UIView beginAnimations:@"RightInAnimation" context:imgv4];
    [UIView setAnimationDuration:0.5f];
    
    imgv4.frame = CGRectMake(0, 0, 1024, 748);
    imgv4.alpha = 1.0f;
    
    [UIView commitAnimations];
    elementR ++;
}

- (void)createAnimationWithMiddle:(int)m{
    elementM = 0;
    for (int i = 0; i < m; i++) {
        [self performSelector:@selector(commitAnimationMiddle) withObject:nil afterDelay:0.25 * i];
    }
}

- (void)commitAnimationMiddle{
    NSString * tFileName = [[ShareData sharedInstance] getFileNameByHead:@"detail"
                                                                    List:list Num:num Page:page Element:elementM];
    
    UIImageView * imgv3 = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:tFileName]] autorelease];
    [self.view addSubview:imgv3];
    
    imgv3.frame = CGRectMake(0, 0, 1024, 748);            
    imgv3.alpha = 0.0f;
    
    [UIView beginAnimations:@"MiddleInAnimation" context:imgv3];
    [UIView setAnimationDuration:0.5f];
    
    imgv3.frame = CGRectMake(0, 0, 1024, 748);
    imgv3.alpha = 1.0f;
    
    [UIView commitAnimations]; 
    elementM ++;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationLandscapeLeft) || 
    (interfaceOrientation == UIInterfaceOrientationLandscapeRight);
}

@end
