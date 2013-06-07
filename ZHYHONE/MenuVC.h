//
//  Menu.h
//  ZHYH1
//
//  Created by silver6wings silver6wings on 12-8-15.
//  Copyright (c) 2012年 BUAA. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <AVFoundation/AVFoundation.h>
#import "MenuScrollView.h"
#import "Introduction.h"


@interface MenuVC : UIViewController{
    UIButton * btNameEng;
    UIButton * btName;
    MenuScrollView * msv;
    
    NSMutableArray * viewCanRemove;
    
    UIImageView * imgvMenuMusic;
    UIImageView * imgvMenuCalcu;
    
    Introduction * intro;
    AVAudioPlayer * avPlayer;
}

@property (nonatomic, retain) UIButton * btNameEng;
@property (nonatomic, retain) UIButton * btName;
@property (nonatomic, retain) MenuScrollView * msv;

@property (nonatomic, retain) NSMutableArray * viewCanRemove;

@end
