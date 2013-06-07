//
//  ContentVC.m
//  ZHYH1
//
//  Created by silver6wings silver6wings on 12-9-7.
//  Copyright (c) 2012年 BUAA. All rights reserved.
//

#import "ContentVC.h"
#import "ShareData.h"
#import "DetailVC.h"
#import "Cover.h"

@implementation ContentVC
@synthesize imgvContent;

- (id)initWithList:(int)tList Num:(int)tNum{
    
    if (self = [super init]) {    
        [ShareData sharedInstance].contentVC = self;
        list = tList;
        num = tNum;
       
        [self removeAllViews];
    }
    return self;
}

- (void)fireAnimation{
    [self removeAllViews];
    {
        if (list == 0) {
            if (num == 0) {
                [self createAnimationWithLeft:2 Right:1];
                [self createAnimationWithMiddle:2];
                
                UIButton * btSep = [UIButton buttonWithType:UIButtonTypeCustom];
                btSep.frame = CGRectMake(500, 510, 25, 25);
                [btSep addTarget:self action:@selector(bt0000click:) forControlEvents:UIControlEventTouchUpInside];
                [self.view addSubview:btSep];
                
            } else if (num == 1) {
                [self createAnimationWithLeft:2 Right:1];
                [self createAnimationWithMiddle:4];
                
            } else if (num == 2) {
                [self createAnimationWithLeft:1 Right:1];
                [self createAnimationWithMiddle:11];
                
            } else if (num == 3) {
                [self createAnimationWithMiddle:16];
                
            }
        }
        if (list == 1) {
            if (num == 0){
                [self createAnimationWithLeft:3 Right:1];
                [self createAnimationWithMiddle:3];
            } else if (num == 1) {
                [self createAnimationWithLeft:2 Right:2];
            } else if (num == 2) {
                [self createAnimationWithLeft:1 Right:1];
                
                UIButton * btSep = [UIButton buttonWithType:UIButtonTypeCustom];
                btSep.frame = CGRectMake(500, 346, 25, 25);
                [btSep addTarget:self action:@selector(bt0102click:) forControlEvents:UIControlEventTouchUpInside];
                [self.view addSubview:btSep];
            } else if (num == 3) {
                [self createAnimationWithLeft:2 Right:0];
                [self createAnimationWithMiddle:1];
                
                UIButton * btSep = [UIButton buttonWithType:UIButtonTypeCustom];
                btSep.frame = CGRectMake(574, 370, 45, 45);
                [btSep addTarget:self action:@selector(btPublicClick:) forControlEvents:UIControlEventTouchUpInside];
                [self.view addSubview:btSep];
            }
        }
        if (list == 2) {
            if (num == 0) {[self createAnimationWithLeft:2 Right:2];
            } else if (num == 1){ 
                [self createAnimationWithLeft:2 Right:1];
                
                UIButton * bt0 = [UIButton buttonWithType:UIButtonTypeCustom];                
                UIButton * bt1 = [UIButton buttonWithType:UIButtonTypeCustom];                
                UIButton * bt2 = [UIButton buttonWithType:UIButtonTypeCustom];                
                UIButton * bt3 = [UIButton buttonWithType:UIButtonTypeCustom];
                
                /*
                 bt0.backgroundColor = [UIColor blackColor];
                 bt1.backgroundColor = [UIColor blackColor];
                 bt2.backgroundColor = [UIColor blackColor];
                 bt3.backgroundColor = [UIColor blackColor];
                 */
                
                bt0.frame = CGRectMake(30, 700, 60, 30);
                bt1.frame = CGRectMake(98, 700, 60, 30);
                bt2.frame = CGRectMake(166, 700, 60, 30);
                bt3.frame = CGRectMake(234, 700, 60, 30);
                
                [bt0 addTarget:self action:@selector(bt020100click:) forControlEvents:UIControlEventTouchUpInside];
                [bt1 addTarget:self action:@selector(bt020101click:) forControlEvents:UIControlEventTouchUpInside];
                [bt2 addTarget:self action:@selector(bt020102click:) forControlEvents:UIControlEventTouchUpInside];
                [bt3 addTarget:self action:@selector(bt020103click:) forControlEvents:UIControlEventTouchUpInside];
                
                [self.view addSubview:bt0];              
                [self.view addSubview:bt1];              
                [self.view addSubview:bt2];              
                [self.view addSubview:bt3];
            }
        }
        if (list == 3) {
            if (num == 0) {[self createAnimationWithLeft:3 Right:9];
            }
        }
        if (list == 4) {
            if (num == 0) {
            } else if (num == 1) {
                [self createAnimationWithLeft:4 Right:0];
                ZoomPicture * zp = [[[ZoomPicture alloc] initWithBigFrame:CGRectMake(0, 0, 3507, 748) PicName:@"big_0401.png"] autorelease];
                zp.frame = CGRectMake(0, 415, 1024, 224);
                [self.view addSubview:zp];
            } else if (num == 2) {
                [self createAnimationWithLeft:2 Right:1];
                ZoomPicture * zp = [[[ZoomPicture alloc] initWithBigFrame:CGRectMake(0, 0, 1410, 748) PicName:@"big_0402.png"] autorelease];
                zp.frame = CGRectMake(0, 195, 1024, 225);
                [self.view addSubview:zp];
            } else if (num == 3) {
                [self createAnimationWithLeft:2 Right:1];
                ZoomPicture * zp = [[[ZoomPicture alloc] initWithBigFrame:CGRectMake(0, 0, 4204, 1024) PicName:@"big_0403.png"] autorelease];
                zp.frame = CGRectMake(0, 195, 1024, 225);
                [self.view addSubview:zp];
            } else if (num == 4) {
                [self createAnimationWithLeft:2 Right:1];
                ZoomPicture * zp = [[[ZoomPicture alloc] initWithBigFrame:CGRectMake(0, 0, 4220, 748) PicName:@"big_0404.png"] autorelease];
                zp.frame = CGRectMake(0, 195, 1024, 225);
                [self.view addSubview:zp];
            } else if (num == 5) {
                [self createAnimationWithLeft:2 Right:1];
                ZoomPicture * zp = [[[ZoomPicture alloc] initWithBigFrame:CGRectMake(0, 0, 1024, 748) PicName:@"big_0405.png"] autorelease];
                zp.frame = CGRectMake(32, 274, 960, 460);
                [self.view addSubview:zp];
                [self createAnimationWithMiddle:10];
                
            } else if (num == 6) { // (+)
                [self createAnimationWithMiddle:5];
                
                UIButton * btSep = [UIButton buttonWithType:UIButtonTypeCustom];
                btSep.frame = CGRectMake(490, 275, 45, 45);
                [btSep addTarget:self action:@selector(bt0406click:) forControlEvents:UIControlEventTouchUpInside];
                [self.view addSubview:btSep];
                
            } else if (num == 7) { // (+)
                [self createAnimationWithMiddle:4];
                
                UIButton * btSep = [UIButton buttonWithType:UIButtonTypeCustom];
                btSep.frame = CGRectMake(490, 622, 45, 45);
                [btSep addTarget:self action:@selector(bt0407click:) forControlEvents:UIControlEventTouchUpInside];
                [self.view addSubview:btSep];
                
            } else if (num == 8) {
                [self createAnimationWithLeft:2 Right:0];
                [self createAnimationWithMiddle:3];
            } else if (num == 9) {
                [self createAnimationWithLeft:5 Right:0];
                
                ZoomPicture * zp = [[[ZoomPicture alloc] initWithBigFrame:CGRectMake(0, 0, 2048, 1536) PicName:@"big_0409.png"] autorelease];
                zp.frame = CGRectMake(612, 0, 412, 748);
                [self.view addSubview:zp];
            } else if (num == 10) {
                [self createAnimationWithLeft:5 Right:0];
                
                ZoomPicture * zp = [[[ZoomPicture alloc] initWithBigFrame:CGRectMake(0, 0, 2048, 1536) PicName:@"big_0410.png"] autorelease];
                zp.frame = CGRectMake(512, 0, 512, 748);
                [self.view addSubview:zp];
            } else if (num == 11) {
                [self createAnimationWithMiddle:3];
            } else if (num == 12) { // (+)
                [self createAnimationWithMiddle:5];
                
                UIButton * btSep = [UIButton buttonWithType:UIButtonTypeCustom];
                btSep.frame = CGRectMake(490, 301, 45, 45);
                [btSep addTarget:self action:@selector(bt0412click:) forControlEvents:UIControlEventTouchUpInside];
                [self.view addSubview:btSep];
            } else if (num == 13) { // (+)
                [self createAnimationWithMiddle:5];
                
                UIButton * btSep = [UIButton buttonWithType:UIButtonTypeCustom];
                btSep.frame = CGRectMake(490, 301, 45, 45);
                [btSep addTarget:self action:@selector(bt0413click:) forControlEvents:UIControlEventTouchUpInside];
                [self.view addSubview:btSep];
            } else if (num == 14) { // (+)
                [self createAnimationWithMiddle:5];
                
                UIButton * btSep = [UIButton buttonWithType:UIButtonTypeCustom];
                btSep.frame = CGRectMake(490, 301, 45, 45);
                [btSep addTarget:self action:@selector(bt0414click:) forControlEvents:UIControlEventTouchUpInside];
                [self.view addSubview:btSep];
            }
        }
        if (list == 9) {
            if (num == 0) {
            } else if (num == 12) {
                [self createAnimationWithMiddle:4];
            } else if (num == 13) {
                ZoomPicture * zp = [[[ZoomPicture alloc] initWithBigFrame:CGRectMake(0, 0, 1024, 748) PicName:@"big_091300.png"] autorelease];
                zp.frame = CGRectMake(200, 200, 220, 270);
                [self.view addSubview:zp];
                
                ZoomPicture * zp1 = [[[ZoomPicture alloc] initWithBigFrame:CGRectMake(0, 0, 1024, 748) PicName:@"big_091301.png"] autorelease];
                zp1.frame = CGRectMake(450, 200, 220, 270);
                [self.view addSubview:zp1];
                
                ZoomPicture * zp2 = [[[ZoomPicture alloc] initWithBigFrame:CGRectMake(0, 0, 1024, 748) PicName:@"big_091302.png"] autorelease];
                zp2.frame = CGRectMake(700, 200, 220, 270);
                [self.view addSubview:zp2];
                
                ZoomPicture * zp3 = [[[ZoomPicture alloc] initWithBigFrame:CGRectMake(0, 0, 1024, 748) PicName:@"big_091303.png"] autorelease];
                zp3.frame = CGRectMake(200, 500, 220, 270);
                [self.view addSubview:zp3];
                
                ZoomPicture * zp4 = [[[ZoomPicture alloc] initWithBigFrame:CGRectMake(0, 0, 1024, 748) PicName:@"big_091304.png"] autorelease];
                zp4.frame = CGRectMake(450, 500, 220, 270);
                [self.view addSubview:zp4];
                
            } else if (num == 14) {
                ZoomPicture * zp = [[[ZoomPicture alloc] initWithBigFrame:CGRectMake(0, 0, 1024, 748) PicName:@"big_091400.png"] autorelease];
                zp.frame = CGRectMake(200, 200, 220, 270);
                [self.view addSubview:zp];
                
                ZoomPicture * zp1 = [[[ZoomPicture alloc] initWithBigFrame:CGRectMake(0, 0, 1024, 748) PicName:@"big_091401.png"] autorelease];
                zp1.frame = CGRectMake(450, 200, 220, 270);
                [self.view addSubview:zp1];
                
                ZoomPicture * zp2 = [[[ZoomPicture alloc] initWithBigFrame:CGRectMake(0, 0, 1024, 748) PicName:@"big_091402.png"] autorelease];
                zp2.frame = CGRectMake(700, 200, 220, 270);
                [self.view addSubview:zp2];
                
                ZoomPicture * zp3 = [[[ZoomPicture alloc] initWithBigFrame:CGRectMake(0, 0, 1024, 748) PicName:@"big_091403.png"] autorelease];
                zp3.frame = CGRectMake(200, 500, 220, 270);
                [self.view addSubview:zp3];
                
                ZoomPicture * zp4 = [[[ZoomPicture alloc] initWithBigFrame:CGRectMake(0, 0, 1024, 748) PicName:@"big_091404.png"] autorelease];
                zp4.frame = CGRectMake(450, 500, 220, 270);
                [self.view addSubview:zp4];
                
            } else if (num == 15) {
                ZoomPicture * zp = [[[ZoomPicture alloc] initWithBigFrame:CGRectMake(0, 0, 1024, 748) PicName:@"big_091500.png"] autorelease];
                zp.frame = CGRectMake(50, 250, 220, 320);
                [self.view addSubview:zp];
                
                ZoomPicture * zp1 = [[[ZoomPicture alloc] initWithBigFrame:CGRectMake(0, 0, 1024, 748) PicName:@"big_091501.png"] autorelease];
                zp1.frame = CGRectMake(300, 250, 220, 320);
                [self.view addSubview:zp1];
                
                ZoomPicture * zp2 = [[[ZoomPicture alloc] initWithBigFrame:CGRectMake(0, 0, 1024, 748) PicName:@"big_091502.png"] autorelease];
                zp2.frame = CGRectMake(550, 250, 170, 320);
                [self.view addSubview:zp2];
                
                ZoomPicture * zp3 = [[[ZoomPicture alloc] initWithBigFrame:CGRectMake(0, 0, 1024, 748) PicName:@"big_091503.png"] autorelease];
                zp3.frame = CGRectMake(750, 250, 170, 320);
                [self.view addSubview:zp3];
                
            }
        }
        if (list == 12) {
            if (num == 0) {
                [self createAnimationWithLeft:1 Right:1];
            } else if (num == 1) {
                [self createAnimationWithLeft:1 Right:2];
            } else if (num == 2) {
                [self createAnimationWithLeft:1 Right:1];
            } else if (num == 3) {
                [self createAnimationWithLeft:1 Right:1];
            } else if (num == 4) {
                [self createAnimationWithLeft:1 Right:1];
            } else if (num == 5) {
                [self createAnimationWithLeft:1 Right:3];
            }
        }
    }
}

- (void)removeAllViews{
    
    for (UIView * tv in [self.view subviews]) {
        [tv removeFromSuperview];
        tv = nil;
    }
    
    NSString * tFileName = [[ShareData sharedInstance] getFileNameByHead:@"content" List:list Num:num];
    
    imgvContent = [[UIImageView alloc] initWithImage:[UIImage imageNamed:tFileName]];
    imgvContent.frame = CGRectMake(0, 0, 1024, 748);
    imgvContent.backgroundColor = [UIColor blackColor];
    [self.view addSubview:imgvContent];
    [imgvContent release];
    
    Cover * cover = [[Cover alloc] initWithList:list Num:num];
    cover.frame = CGRectMake(0, 0, 1024, 748);
    [self.view addSubview:cover];
    [cover release];
}

#pragma IBAction

- (IBAction)bt0000click:(id)sender{
    [self addDetailViewPage:0];
    
    {   
        [[ShareData sharedInstance] removeMenuVCarray];
        //[[ShareData sharedInstance].contentSV removeFromSuperview];
        
        // === 1
        
        UIImageView * imgvd2 = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"content_00_00_s_00"]] autorelease];
        [[ShareData sharedInstance].menuVC.view addSubview:imgvd2];
        [[ShareData sharedInstance].menuVC.viewCanRemove addObject:imgvd2];
        
        imgvd2.frame = CGRectMake(0, 0, 1024, 525);
        [UIView beginAnimations:@"seprate" context:imgvd2];
        [UIView setAnimationDuration:0.5f];
        imgvd2.frame = CGRectMake(0, -525, 1024, 525);
        [UIView commitAnimations];
        
        // === 3
        
        UIImageView * imgvd1 = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"content_00_00_s_01"]] autorelease];
        [[ShareData sharedInstance].menuVC.view addSubview:imgvd1];
        [[ShareData sharedInstance].menuVC.viewCanRemove addObject:imgvd1];
        
        imgvd1.frame = CGRectMake(0, 525, 1024, 243);    
        [UIView beginAnimations:@"seprate" context:imgvd1];
        [UIView setAnimationDuration:0.5f];
        imgvd1.frame = CGRectMake(0, 748, 1024, 243);
        [UIView commitAnimations];
    }
}

- (IBAction)bt0406click:(id)sender{
    [self addDetailViewPage:0];
    
    {   
        [[ShareData sharedInstance] removeMenuVCarray];
        //[[ShareData sharedInstance].contentSV removeFromSuperview];
        
        // === 1
        
        UIImageView * imgvd2 = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"content_04_06_s_00"]] autorelease];
        [[ShareData sharedInstance].menuVC.view addSubview:imgvd2];
        [[ShareData sharedInstance].menuVC.viewCanRemove addObject:imgvd2];
        
        imgvd2.frame = CGRectMake(0, 0, 1024, 305);
        [UIView beginAnimations:@"seprate" context:imgvd2];
        [UIView setAnimationDuration:0.5f];
        imgvd2.frame = CGRectMake(0, -305, 1024, 305);
        [UIView commitAnimations];
        
        // === 3
        
        UIImageView * imgvd1 = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"content_04_06_s_01"]] autorelease];
        [[ShareData sharedInstance].menuVC.view addSubview:imgvd1];
        [[ShareData sharedInstance].menuVC.viewCanRemove addObject:imgvd1];
        
        imgvd1.frame = CGRectMake(0, 305, 1024, 463);    
        [UIView beginAnimations:@"seprate" context:imgvd1];
        [UIView setAnimationDuration:0.5f];
        imgvd1.frame = CGRectMake(0, 748, 1024, 463);
        [UIView commitAnimations];
    }
}

- (IBAction)bt0407click:(id)sender{
    [self addDetailViewPage:0];
    
    {   
        [[ShareData sharedInstance] removeMenuVCarray];
        //[[ShareData sharedInstance].contentSV removeFromSuperview];
        
        // === 1
        
        UIImageView * imgvd2 = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"content_04_07_s_00"]] autorelease];
        [[ShareData sharedInstance].menuVC.view addSubview:imgvd2];
        [[ShareData sharedInstance].menuVC.viewCanRemove addObject:imgvd2];
        
        imgvd2.frame = CGRectMake(0, 0, 1024, 664);
        [UIView beginAnimations:@"seprate" context:imgvd2];
        [UIView setAnimationDuration:0.8f];
        imgvd2.frame = CGRectMake(0, -664, 1024, 664);
        [UIView commitAnimations];
        
        // === 3
        
        UIImageView * imgvd1 = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"content_04_07_s_01"]] autorelease];
        [[ShareData sharedInstance].menuVC.view addSubview:imgvd1];
        [[ShareData sharedInstance].menuVC.viewCanRemove addObject:imgvd1];
        
        imgvd1.frame = CGRectMake(0, 644, 1024, 104);    
        [UIView beginAnimations:@"seprate" context:imgvd1];
        [UIView setAnimationDuration:0.5f];
        imgvd1.frame = CGRectMake(0, 748, 1024, 104);
        [UIView commitAnimations];
    }
}

- (IBAction)bt0412click:(id)sender{
    [self addDetailViewPage:0];
    
    {   
        [[ShareData sharedInstance] removeMenuVCarray];
        //[[ShareData sharedInstance].contentSV removeFromSuperview];
        
        // === 1
        
        UIImageView * imgvd2 = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"content_04_12_s_00"]] autorelease];
        [[ShareData sharedInstance].menuVC.view addSubview:imgvd2];
        [[ShareData sharedInstance].menuVC.viewCanRemove addObject:imgvd2];
        
        imgvd2.frame = CGRectMake(0, 0, 1024, 333);
        [UIView beginAnimations:@"seprate" context:imgvd2];
        [UIView setAnimationDuration:0.5f];
        imgvd2.frame = CGRectMake(0, -333, 1024, 333);
        [UIView commitAnimations];
        
        // === 3
        
        UIImageView * imgvd1 = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"content_04_12_s_01"]] autorelease];
        [[ShareData sharedInstance].menuVC.view addSubview:imgvd1];
        [[ShareData sharedInstance].menuVC.viewCanRemove addObject:imgvd1];
        
        imgvd1.frame = CGRectMake(0, 333, 1024, 435);    
        [UIView beginAnimations:@"seprate" context:imgvd1];
        [UIView setAnimationDuration:0.5f];
        imgvd1.frame = CGRectMake(0, 748, 1024, 435);
        [UIView commitAnimations];
    }
}

- (IBAction)bt0413click:(id)sender{
    [self addDetailViewPage:0];
    
    
    {   
        [[ShareData sharedInstance] removeMenuVCarray];
        //[[ShareData sharedInstance].contentSV removeFromSuperview];
        
        // === 1
        
        UIImageView * imgvd2 = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"content_04_13_s_00"]] autorelease];
        [[ShareData sharedInstance].menuVC.view addSubview:imgvd2];
        [[ShareData sharedInstance].menuVC.viewCanRemove addObject:imgvd2];
        
        imgvd2.frame = CGRectMake(0, 0, 1024, 333);
        [UIView beginAnimations:@"seprate" context:imgvd2];
        [UIView setAnimationDuration:0.5f];
        imgvd2.frame = CGRectMake(0, -333, 1024, 333);
        [UIView commitAnimations];
        
        // === 3
        
        UIImageView * imgvd1 = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"content_04_13_s_01"]] autorelease];
        [[ShareData sharedInstance].menuVC.view addSubview:imgvd1];
        [[ShareData sharedInstance].menuVC.viewCanRemove addObject:imgvd1];
        
        imgvd1.frame = CGRectMake(0, 333, 1024, 435);    
        [UIView beginAnimations:@"seprate" context:imgvd1];
        [UIView setAnimationDuration:0.5f];
        imgvd1.frame = CGRectMake(0, 748, 1024, 435);
        [UIView commitAnimations];
    }
}

- (IBAction)bt0414click:(id)sender{
    [self addDetailViewPage:0];
    
    
    {   
        [[ShareData sharedInstance] removeMenuVCarray];
        //[[ShareData sharedInstance].contentSV removeFromSuperview];
        
        // === 1
        
        UIImageView * imgvd2 = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"content_04_14_s_00"]] autorelease];
        [[ShareData sharedInstance].menuVC.view addSubview:imgvd2];
        [[ShareData sharedInstance].menuVC.viewCanRemove addObject:imgvd2];
        
        imgvd2.frame = CGRectMake(0, 0, 1024, 333);
        [UIView beginAnimations:@"seprate" context:imgvd2];
        [UIView setAnimationDuration:0.5f];
        imgvd2.frame = CGRectMake(0, -333, 1024, 333);
        [UIView commitAnimations];
        
        // === 3
        
        UIImageView * imgvd1 = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"content_04_14_s_01"]] autorelease];
        [[ShareData sharedInstance].menuVC.view addSubview:imgvd1];
        [[ShareData sharedInstance].menuVC.viewCanRemove addObject:imgvd1];
        
        imgvd1.frame = CGRectMake(0, 333, 1024, 435);    
        [UIView beginAnimations:@"seprate" context:imgvd1];
        [UIView setAnimationDuration:0.5f];
        imgvd1.frame = CGRectMake(0, 748, 1024, 435);
        [UIView commitAnimations];
    }
}

- (IBAction)bt0102click:(id)sender{
    [self addDetailViewPage:0];
    
    {   
    [[ShareData sharedInstance] removeMenuVCarray];
    //[[ShareData sharedInstance].contentSV removeFromSuperview];
    
        // === 1
        
        UIImageView * imgvd2 = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"content_01_02_m_02"]] autorelease];
        [[ShareData sharedInstance].menuVC.view addSubview:imgvd2];
        [[ShareData sharedInstance].menuVC.viewCanRemove addObject:imgvd2];
        
        imgvd2.frame = CGRectMake(0, 0, 1024, 368);
        [UIView beginAnimations:@"seprate" context:imgvd2];
        [UIView setAnimationDuration:0.5f];
        imgvd2.frame = CGRectMake(0, -368, 1024, 368);
        [UIView commitAnimations];
        
        // === 2
        
        UIImageView * imgvd5 = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"content_01_02_l_00"]] autorelease];
        [[ShareData sharedInstance].menuVC.view addSubview:imgvd5];
        [[ShareData sharedInstance].menuVC.viewCanRemove addObject:imgvd5];
        
        imgvd5.frame = CGRectMake(0, 0, 1024, 748);    
        [UIView beginAnimations:@"seprate" context:imgvd5];
        [UIView setAnimationDuration:0.5f];
        imgvd5.frame = CGRectMake(0, -368, 1024, 400);
        [UIView commitAnimations];
        
        // === 3
        
        UIImageView * imgvd1 = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"content_01_02_m_01"]] autorelease];
        [[ShareData sharedInstance].menuVC.view addSubview:imgvd1];
        [[ShareData sharedInstance].menuVC.viewCanRemove addObject:imgvd1];
        
        imgvd1.frame = CGRectMake(0, 348, 1024, 400);    
        [UIView beginAnimations:@"seprate" context:imgvd1];
        [UIView setAnimationDuration:0.5f];
        imgvd1.frame = CGRectMake(0, 748, 1024, 400);
        [UIView commitAnimations];
        
        // === 4
        
        UIImageView * imgvd6 = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"content_01_02_r_00"]] autorelease];
        [[ShareData sharedInstance].menuVC.view addSubview:imgvd6];
        [[ShareData sharedInstance].menuVC.viewCanRemove addObject:imgvd6];
        
        imgvd6.frame = CGRectMake(0, 0, 1024, 748);    
        [UIView beginAnimations:@"seprate" context:imgvd6];
        [UIView setAnimationDuration:0.5f];
        imgvd6.frame = CGRectMake(0, 400, 1024, 748);
        [UIView commitAnimations];
    }
    
}

- (IBAction)btPublicClick:(id)sender{
    [self addDetailViewPage:0];
}

- (IBAction)bt020100click:(id)sender{
    [self addDetailViewPage:0 Height:700];
}

- (IBAction)bt020101click:(id)sender{
    [self addDetailViewPage:1 Height:700];
}

- (IBAction)bt020102click:(id)sender{
    [self addDetailViewPage:2 Height:700];
}

- (IBAction)bt020103click:(id)sender{
    [self addDetailViewPage:3 Height:700];
}

- (void)addDetailViewPage:(int)tPage{
    
    // release content
    if ([ShareData sharedInstance].detailVC != nil) {
        [[ShareData sharedInstance].detailVC.view removeFromSuperview];
        [[ShareData sharedInstance].detailVC release];
        [ShareData sharedInstance].detailVC = nil;
    }
    
    DetailVC * dvc = [[DetailVC alloc] initWithList:list Num:num Page:tPage];
    dvc.view.frame = CGRectMake(0, 0, 1024, 748);
    [ShareData sharedInstance].detailVC = dvc;
    [[ShareData sharedInstance].menuVC.view addSubview:dvc.view]; 
}

- (void)addDetailViewPage:(int)tPage
                   Height:(int)tHeight{
    
    // release content
    if ([ShareData sharedInstance].detailVC != nil) {
        [[ShareData sharedInstance].detailVC.view removeFromSuperview];
        [[ShareData sharedInstance].detailVC release];
        [ShareData sharedInstance].detailVC = nil;
    }
    
    DetailVC * dvc = [[[DetailVC alloc] initWithList:list Num:num Page:tPage] autorelease];
    dvc.view.frame = CGRectMake(0, 0, 1024, tHeight);
    [ShareData sharedInstance].detailVC = dvc;
    
    [[ShareData sharedInstance].menuVC.view addSubview:dvc.view]; 
}

#pragma Animation

- (void)commitAnimationLeft{
    NSString * tFileName = [[ShareData sharedInstance] getFileNameByHead:@"content" 
                                                                    List:list Num:num Left:YES Element:elementL];
    
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
    NSString * tFileName = [[ShareData sharedInstance] getFileNameByHead:@"content" 
                                                                    List:list Num:num Left:NO Element:elementR];
    
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

- (void)commitAnimationMiddle{
    NSString * tFileName = [[ShareData sharedInstance] getFileNameByHead:@"content" List:list Num:num Element:elementM];
    
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

- (void)createAnimationWithMiddle:(int)m{
    elementM = 0;
    for (int i = 0; i < m; i++) {
        [self performSelector:@selector(commitAnimationMiddle) withObject:nil afterDelay:0.25 * i];
    }
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation{
    return (interfaceOrientation == UIInterfaceOrientationLandscapeLeft) || 
    (interfaceOrientation == UIInterfaceOrientationLandscapeRight);
}

@end