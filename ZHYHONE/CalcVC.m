//
//  CalcVC.m
//  ZHYHONE
//
//  Created by silver6wings silver6wings on 12-9-26.
//  Copyright (c) 2012年 BUAA. All rights reserved.
//

#import "CalcVC.h"
#import <QuartzCore/QuartzCore.h>

@implementation CalcVC

- (id)init
{
    self = [super init];
    if (self) {
        
        [self setImage:[UIImage imageNamed:@"calc_back.png"] forState:UIControlStateNormal];
        
        UIButton * btSave = [UIButton buttonWithType:UIButtonTypeCustom];
        btSave.frame = CGRectMake(500, 677, 90, 25);
        [btSave addTarget:self action:@selector(btSaveClick:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:btSave];
        
        UIButton * btClean = [UIButton buttonWithType:UIButtonTypeCustom];
        btClean.frame = CGRectMake(601, 677, 90, 25);
        [btClean addTarget:self action:@selector(btCleanClick:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:btClean];
        
        UIButton * btDo = [UIButton buttonWithType:UIButtonTypeCustom];
        btDo.frame = CGRectMake(702, 677, 90, 25);
        [btDo addTarget:self action:@selector(btDoClick:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:btDo];
        
        // Labels
        
        lb00 = [[[UILabel alloc] initWithFrame:CGRectMake(519, 200, 271, 25)] autorelease];
        lb01 = [[[UILabel alloc] initWithFrame:CGRectMake(519, 235, 271, 25)] autorelease];
        lb02 = [[[UILabel alloc] initWithFrame:CGRectMake(519, 270, 271, 25)] autorelease];
        lb03 = [[[UILabel alloc] initWithFrame:CGRectMake(519, 305, 271, 25)] autorelease];
        lb04 = [[[UILabel alloc] initWithFrame:CGRectMake(519, 340, 271, 25)] autorelease];
        lb05 = [[[UILabel alloc] initWithFrame:CGRectMake(519, 375, 271, 25)] autorelease];
        lb06 = [[[UILabel alloc] initWithFrame:CGRectMake(519, 441, 271, 25)] autorelease];
        lb07 = [[[UILabel alloc] initWithFrame:CGRectMake(519, 476, 271, 25)] autorelease];
        lb08 = [[[UILabel alloc] initWithFrame:CGRectMake(519, 511, 271, 25)] autorelease];
        lb09 = [[[UILabel alloc] initWithFrame:CGRectMake(519, 546, 271, 25)] autorelease];
        lb10 = [[[UILabel alloc] initWithFrame:CGRectMake(519, 581, 271, 25)] autorelease];
        lb11 = [[[UILabel alloc] initWithFrame:CGRectMake(519, 616, 271, 25)] autorelease];
        
        lb00.textAlignment = UITextAlignmentRight;
        lb01.textAlignment = UITextAlignmentRight;
        lb02.textAlignment = UITextAlignmentRight;
        lb03.textAlignment = UITextAlignmentRight;
        lb04.textAlignment = UITextAlignmentRight;
        lb05.textAlignment = UITextAlignmentRight;
        lb06.textAlignment = UITextAlignmentRight;
        lb07.textAlignment = UITextAlignmentRight;
        lb08.textAlignment = UITextAlignmentRight;
        lb09.textAlignment = UITextAlignmentRight;
        lb10.textAlignment = UITextAlignmentRight;
        lb11.textAlignment = UITextAlignmentRight;
        
        lb00.backgroundColor = [UIColor clearColor];
        lb01.backgroundColor = [UIColor clearColor];
        lb02.backgroundColor = [UIColor clearColor];
        lb03.backgroundColor = [UIColor clearColor];
        lb04.backgroundColor = [UIColor clearColor];
        lb05.backgroundColor = [UIColor clearColor];
        lb06.backgroundColor = [UIColor clearColor];
        lb07.backgroundColor = [UIColor clearColor];
        lb08.backgroundColor = [UIColor clearColor];
        lb09.backgroundColor = [UIColor clearColor];
        lb10.backgroundColor = [UIColor clearColor];
        lb11.backgroundColor = [UIColor clearColor];
        
        [self refreshDB];
        
        [self addSubview:lb00];
        [self addSubview:lb01];
        [self addSubview:lb02];
        [self addSubview:lb03];
        [self addSubview:lb04];
        [self addSubview:lb05];
        [self addSubview:lb06];
        [self addSubview:lb07];
        [self addSubview:lb08];
        [self addSubview:lb09];
        [self addSubview:lb10];
        [self addSubview:lb11];
        
        // Label button
        
        UIButton * bt00 = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton * bt01 = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton * bt03 = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton * bt06 = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton * bt07 = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton * bt08 = [UIButton buttonWithType:UIButtonTypeCustom];
        
        bt00.frame = CGRectMake(519, 200, 271, 25);
        bt01.frame = CGRectMake(519, 235, 271, 25);
        bt03.frame = CGRectMake(519, 305, 271, 25);
        bt06.frame = CGRectMake(519, 441, 271, 25);
        bt07.frame = CGRectMake(519, 476, 271, 25);
        bt08.frame = CGRectMake(519, 511, 271, 25);
        
        [bt00 addTarget:self action:@selector(btLabel00Click:) forControlEvents:UIControlEventTouchUpInside];
        [bt01 addTarget:self action:@selector(btLabel01Click:) forControlEvents:UIControlEventTouchUpInside];
        [bt03 addTarget:self action:@selector(btLabel03Click:) forControlEvents:UIControlEventTouchUpInside];
        [bt06 addTarget:self action:@selector(btLabel06Click:) forControlEvents:UIControlEventTouchUpInside];
        [bt07 addTarget:self action:@selector(btLabel07Click:) forControlEvents:UIControlEventTouchUpInside];
        [bt08 addTarget:self action:@selector(btLabel08Click:) forControlEvents:UIControlEventTouchUpInside];
        
        [self addSubview:bt00];
        [self addSubview:bt01];
        [self addSubview:bt03];
        [self addSubview:bt06];
        [self addSubview:bt07];
        [self addSubview:bt08];
        
        // UIImage
        imgNums = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"calc_nums"]];
        imgNums.frame = CGRectZero;
        [self addSubview:imgNums];
        
        for (int i = 0; i < 12; i++) {
            btNums[i] = [UIButton buttonWithType:UIButtonTypeCustom];
//            btNums[i].backgroundColor = [UIColor greenColor];
//            btNums[i].alpha = 0.5f;
            btNums[i].tag = 8800 + i;
            [btNums[i] addTarget:self action:@selector(btNumsClick:) forControlEvents:UIControlEventTouchUpInside];
            [self addSubview:btNums[i]];
        }
        
        // blink
        uvw = [[[UIView alloc] initWithFrame:CGRectMake(0, 0, 1024, 748)] autorelease];
        uvw.alpha = 0.0f;
        uvw.backgroundColor = [UIColor whiteColor];
        [self addSubview:uvw];
    }
    return self;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    UITouch * touch = [[event allTouches] anyObject];        
    if ([touch tapCount] == 2) {  
        [self removeFromSuperview];
    }
}

- (IBAction)btSaveClick:(id)sender{
    
    UIGraphicsBeginImageContext(self.frame.size); //currentView 当前的view
    [self.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage * img = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    UIImageWriteToSavedPhotosAlbum(img, nil, nil, nil);
    
    uvw.alpha = 1.0f;
    
    [UIView beginAnimations:@"silver6wings" context:uvw];
    [UIView setAnimationDuration:0.2f];
    
    uvw.alpha = 0.0f;
    
    [UIView commitAnimations];
}
     
- (IBAction)btCleanClick:(id)sender{
    d00 = 0.0; //面积
    d01 = 0.0; //单价
    d02 = 0.0; //总价
    d03 = 0.0; //折扣
    d04 = 0.0; //折后价
    d05 = 0.0; //首付
    d06 = 0.0; //贷款本金
    d07 = 0.0; //年数
    d08 = 0.0; //年利率
    d09 = 0.0; //利息
    d10 = 0.0; //月均还款
    d11 = 0.0; //还款总额
    isDoting = NO;
    
    [self refreshDB];
}

- (IBAction)btDoClick:(id)sender{
    
    //总价
    d02 = d00 * d01;
    //折后价
    d04 = d02 * d03 / 100;
    //首付
    d05 = d04 - d06;
    
    double A = d06;         //贷款本金
    double b = d08 / 1200;  //年利率
    double m = d07 * 12;    //还款月数 
    
    //月均还款
    if ( (pow((1+b), m) - 1) == 0) {
        d10 = 0;
    } else {
        d10 = (A * b * pow((1+b), m)) / (pow((1+b), m) - 1);
    }
    
    //还款总额
    d11 = d10 * m;
    
    //利息
    d09 = d11 - A;
    
    
    [self refreshDB];
}

- (IBAction)btNumsClick:(id)sender{
    int ttag = ((UIButton *)sender).tag - 8800 + 1;
    if (ttag < 10) {
        if (isDoting) {
            *mdf = *mdf + ttag * dotBase;
            dotBase *= 0.1;
        } else {
            *mdf = *mdf * 10 + ttag;
        }
        
    } else if (ttag == 10) {
        isDoting = YES;
        dotBase = 0.1;
    } else if (ttag == 11) {
        if (isDoting) {
            dotBase *= 0.1;
        } else {
            *mdf = *mdf * 10;
        }
    } else if (ttag == 12) {
        *mdf = 0;
        isDoting = NO;
    }
    
    [self refreshDB];
} 

- (void)refreshBT{
    int x = imgNums.frame.origin.x;
    int y = imgNums.frame.origin.y;
    
    for (int i = 0; i < 12; i++) {
        btNums[i].frame = CGRectMake(x + 27 + (i % 3) * 60, y + 10 + (i / 3) * 40, 59, 39);
    }
    
    isDoting = NO;
    *mdf = 0;
}

- (void)refreshDB{
    lb00.text = [NSString stringWithFormat:@"%1.2f",d00];
    lb01.text = [NSString stringWithFormat:@"%1.2f",d01];
    lb02.text = [NSString stringWithFormat:@"%1.2f",d02];
    lb03.text = [NSString stringWithFormat:@"%1.2f%%",d03];
    lb04.text = [NSString stringWithFormat:@"%1.2f",d04];
    lb05.text = [NSString stringWithFormat:@"%1.2f",d05];
    
    lb06.text = [NSString stringWithFormat:@"%1.2f",d06];
    lb07.text = [NSString stringWithFormat:@"%1.0f年(%1.0f期)",d07,d07*12];
    lb08.text = [NSString stringWithFormat:@"%1.4f%%",d08];
    lb09.text = [NSString stringWithFormat:@"%1.2f",d09];
    lb10.text = [NSString stringWithFormat:@"%1.2f",d10];
    lb11.text = [NSString stringWithFormat:@"%1.2f",d11];
}

- (IBAction)btLabel00Click:(id)sender{ 
    imgNums.frame = CGRectMake(790, 200 - 76 , 215, 178);
    mdf = &d00;
    [self refreshBT];
}

- (IBAction)btLabel01Click:(id)sender{ 
    imgNums.frame = CGRectMake(790, 235 - 76 , 215, 178);
    mdf = &d01;
    [self refreshBT];
}

- (IBAction)btLabel03Click:(id)sender{ 
    imgNums.frame = CGRectMake(790, 305 - 76 , 215, 178);
    mdf = &d03;
    [self refreshBT];
}

- (IBAction)btLabel06Click:(id)sender{ 
    imgNums.frame = CGRectMake(790, 441 - 76 , 215, 178);
    mdf = &d06;
    [self refreshBT];
}

- (IBAction)btLabel07Click:(id)sender{ 
    imgNums.frame = CGRectMake(790, 476 - 76 , 215, 178);
    mdf = &d07;
    [self refreshBT];
}

- (IBAction)btLabel08Click:(id)sender{ 
    imgNums.frame = CGRectMake(790, 511 - 76 , 215, 178);
    mdf = &d08;
    [self refreshBT];
}

@end
