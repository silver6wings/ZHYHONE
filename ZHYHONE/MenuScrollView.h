#import <Foundation/Foundation.h>

@interface MenuScrollView : UIScrollView <UIScrollViewDelegate>
{        
    NSMutableArray * menuList;
    NSMutableArray * maskList;
}

@property (nonatomic, retain) NSMutableArray * menuList;

@end
