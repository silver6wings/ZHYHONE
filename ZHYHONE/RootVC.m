//
//  RootVC.m
//  ZHYHONE
//
//  Created by silver6wings silver6wings on 12-10-12.
//  Copyright (c) 2012年 BUAA. All rights reserved.
//

#import "RootVC.h"

@implementation RootVC

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation{
    return (interfaceOrientation == UIInterfaceOrientationLandscapeLeft) || 
    (interfaceOrientation == UIInterfaceOrientationLandscapeRight);
}

@end
