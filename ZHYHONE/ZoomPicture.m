//
//  ZoomPicture.m
//  ZHYHONE
//
//  Created by silver6wings silver6wings on 12-9-10.
//  Copyright (c) 2012年 BUAA. All rights reserved.
//

#import "ZoomPicture.h"
#import "ShareData.h"

@implementation ZoomPicture

-(id)initWithBigFrame:(CGRect)tFrame 
              PicName:(NSString *)tName{
    if(self = [super init]){
        bigFrame = tFrame;
        picName = tName;
    }
    return self;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    UITouch * touch = [[event allTouches] anyObject];
    if ([touch tapCount] == 2) {
        
        usv = [[[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 1024, 748)] autorelease];
        usv.contentSize = bigFrame.size;
        usv.delegate = self;
        usv.bounces = NO;
        usv.backgroundColor = [UIColor blackColor];
        usv.showsHorizontalScrollIndicator = NO;
        usv.showsVerticalScrollIndicator = NO;
        usv.bouncesZoom = NO;
        //usv.contentOffset = CGPointMake(bigFrame.size.width / 2 - 512, 0);
        
        float min1 = 1024 / bigFrame.size.width;
        float min2 = 748 / bigFrame.size.height;
        usv.minimumZoomScale = min1 < min2 ? min1 : min2;
        
        bigPic = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:picName]] autorelease];
        bigPic.frame = bigFrame;
        [usv addSubview:bigPic];
        
        UIButton * btCancel = [UIButton buttonWithType:UIButtonTypeCustom];
        btCancel.frame = bigFrame;
        [btCancel addTarget:self action:@selector(clearSelf:) forControlEvents:UIControlEventTouchDownRepeat];
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


-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView{
    return bigPic;
}

-(void)scrollViewDidZoom:(UIScrollView *)scrollView{
    
    if (scrollView.frame.size.width < bigPic.frame.size.width){
        
        if (scrollView.frame.size.height < bigPic.frame.size.height) {    
            [bigPic setCenter:CGPointMake(bigPic.frame.size.width/2, bigPic.frame.size.height / 2)];       
        } else {
            [bigPic setCenter:CGPointMake(bigPic.frame.size.width/2, scrollView.frame.size.height / 2)];  
        }
        
    } else {
        
        if (scrollView.frame.size.height < bigPic.frame.size.height) {
            [bigPic setCenter:CGPointMake(scrollView.frame.size.width/2, bigPic.frame.size.height / 2)];  
        } else {
            [bigPic setCenter:CGPointMake(scrollView.frame.size.width/2, scrollView.frame.size.height / 2)];  
        }
        
    }
}

@end
