//
//  ZoomPicture.m
//  ZHYHONE
//
//  Created by silver6wings silver6wings on 12-9-10.
//  Copyright (c) 2012年 BUAA. All rights reserved.
//

#import "ZoomPicture1.h"
#import "ShareData.h"

@implementation ZoomPicture1

-(id)initWithBigFrame:(CGRect)tFrame 
              PicName:(NSString *)tName{
    if(self = [super init]){
        bigFrame = tFrame;
        picName = tName;
        // self.backgroundColor = [UIColor blackColor];
    }
    return self;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    UITouch * touch = [[event allTouches] anyObject];
    if ([touch tapCount] == 1) {
        
        usv = [[[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 1024, 748)] autorelease];
        usv.contentSize = bigFrame.size;
        usv.bounces = NO;
        usv.showsHorizontalScrollIndicator = NO;
        usv.showsVerticalScrollIndicator = NO;
        //usv.contentOffset = CGPointMake(bigFrame.size.width / 2 - 512, 0);
        
        UIImageView * bigPic = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:picName]] autorelease];
        bigPic.frame = bigFrame;
        [usv addSubview:bigPic];
        
        UIButton * btCancel = [UIButton buttonWithType:UIButtonTypeCustom];
        btCancel.frame = bigFrame;
        [btCancel addTarget:self action:@selector(clearSelf:) forControlEvents:UIControlEventTouchUpInside];
        [usv addSubview:btCancel];
        
        [[ShareData sharedInstance].menuVC.view addSubview:usv];
        
        // Animation
        
        usv.alpha = 0.0f;
        [UIView beginAnimations:@"silver6wings" context:usv];
        [UIView setAnimationDuration:0.5f];
        
        usv.alpha = 1.0f;
        [UIView commitAnimations];
    }
}

- (IBAction)clearSelf:(id)sender{
    
    usv.alpha = 1.0f;
    [UIView beginAnimations:@"silver6wings" context:usv];
    [UIView setAnimationDuration:0.5f];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDidStopSelector:@selector(removeSelf:)];
    
    usv.alpha = 0.0f;
    [UIView commitAnimations];
}

- (IBAction)removeSelf:(id)sender{
    [usv removeFromSuperview];
}

@end
