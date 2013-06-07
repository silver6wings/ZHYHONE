//
//  Menu.m
//  ZHYH1
//
//  Created by silver6wings silver6wings on 12-8-15.
//  Copyright (c) 2012年 BUAA. All rights reserved.
//

#import "MenuVC.h"
#import "ShareData.h"
#import "CalcVC.h"

@implementation MenuVC
@synthesize btName, btNameEng,msv,viewCanRemove;

-(id)init{
    self = [super init];
    if (self) {
        [ShareData sharedInstance].menuVC = self;
        self.view.backgroundColor = [UIColor whiteColor]; 
    }
    return self;
}

- (void)viewDidLoad{
    [super viewDidLoad];
    
    NSString * soundPath = [[NSBundle mainBundle] pathForResource:@"music" ofType:@"mp3"];
    NSURL * soundUrl=[[NSURL alloc] initFileURLWithPath:soundPath];
    avPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:soundUrl error:nil];
    [soundUrl release];
    
    [avPlayer prepareToPlay];
    
    msv = [[MenuScrollView alloc] initWithFrame:CGRectMake(0, 200, 1024, 470)];
    [self.view addSubview:msv];
    
    UIImageView * imgvMenuWhite = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"menu_white_mask"]] autorelease];
    imgvMenuWhite.frame = CGRectMake(0, 3, 1024, 765);
    [self.view addSubview:imgvMenuWhite];
    
    
    // === icon
    
    imgvMenuMusic = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"menu_music_off"]] autorelease];
    imgvMenuMusic.frame = CGRectMake(23, 702, 25, 25);
    [self.view addSubview:imgvMenuMusic];
    
    UIButton * btMenuMusic = [UIButton buttonWithType:UIButtonTypeCustom];
    btMenuMusic.frame = imgvMenuMusic.frame;
    [btMenuMusic addTarget:self action:@selector(btMusic:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btMenuMusic];
    
    imgvMenuCalcu = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"menu_icon_calcu"]] autorelease];
    imgvMenuCalcu.frame = CGRectMake(60, 700, 29, 28);
    [self.view addSubview:imgvMenuCalcu];

    UIButton * btCalc = [UIButton buttonWithType:UIButtonTypeCustom];
    btCalc.frame = imgvMenuCalcu.frame;
    [btCalc addTarget:self action:@selector(btCalc:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btCalc];

    
    // === title
    
    UIImageView * imgvMenuWord1 = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"menu_word_1"]] autorelease];
    imgvMenuWord1.frame = CGRectMake(20, 20, 275, 28);
    [self.view addSubview:imgvMenuWord1];
    
    UIImageView * imgvMenuWord2 = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"menu_word_2"]] autorelease];
    imgvMenuWord2.frame = CGRectMake(300, 700, 439, 39);
    [self.view addSubview:imgvMenuWord2];
    
    // === content
    
    UIView * redBar = [[[UIView alloc] initWithFrame:CGRectMake(357, 180, 310, 10)] autorelease];
    redBar.backgroundColor = [UIColor redColor];
    [self.view addSubview:redBar];
    
    btNameEng = [UIButton buttonWithType:UIButtonTypeCustom];
    btNameEng.frame = CGRectMake(357, 120, 310, 15);
    [btNameEng setTitle:@"ZHONGHAI BRAND" forState:UIControlStateNormal];
    [btNameEng setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [self.view addSubview:btNameEng];
    
    btName = [UIButton buttonWithType:UIButtonTypeCustom];
    btName.frame = CGRectMake(357, 150, 310, 20);
    [btName setTitle:@"中海品牌" forState:UIControlStateNormal];
    [btName setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:btName];
    
    // === Debug
    
    UILabel * lbBETA = [[[UILabel alloc] initWithFrame:CGRectMake(175, 100, 824, 548)] autorelease];
    lbBETA.backgroundColor = [UIColor clearColor];
    lbBETA.font = [UIFont boldSystemFontOfSize:256];
    lbBETA.alpha = 0.2;
    lbBETA.text = @"BETA";
    [self.view addSubview:lbBETA];
    
    intro = [[[Introduction alloc] initWithType:1] autorelease];
    intro.frame = CGRectMake(0, 0, 1024, 748);
    [self.view addSubview:intro];
    
}

-(IBAction) btMusic:(id)sender {
    
    if ([avPlayer isPlaying]) {
        [avPlayer stop];
        imgvMenuMusic.image = [UIImage imageNamed:@"menu_music_off.png"];
    } else {
        [avPlayer play];
        imgvMenuMusic.image = [UIImage imageNamed:@"menu_music_on.png"];
    }
}

-(IBAction) btCalc:(id)sender{
    
    CalcVC * cavc = [[[CalcVC alloc] init] autorelease];
    
    cavc.frame = CGRectMake(0, 0, 1024, 748);
    
    [self.view addSubview:cavc];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation{
    return (interfaceOrientation == UIInterfaceOrientationLandscapeLeft) || 
    (interfaceOrientation == UIInterfaceOrientationLandscapeRight);
}

@end
