#import "MenuScrollView.h"
#import "Mask.h"
#import "ShareData.h"

@implementation MenuScrollView
@synthesize menuList;

static int menuCount = 14; //fuck
static int pageCount[14] = {4,4,2,1,15,2,2,2,15,16,2,30,6,1};

-(id)initWithFrame:(CGRect)frame{
    
    if ((self = [super initWithFrame:frame])) {
        
        self.backgroundColor = [UIColor clearColor];
        self.showsHorizontalScrollIndicator = NO;
        self.showsVerticalScrollIndicator = NO;
        self.pagingEnabled = NO;
        //self.contentInset = UIEdgeInsetsZero;
        self.delegate = self;
        self.bounces = NO;
        self.bouncesZoom = NO;
                
        //fuck
        self.contentSize = CGSizeMake(320 * menuCount + 357 * 2 - 10 - 320, 230);
        
        menuList = [[NSMutableArray alloc] initWithCapacity:menuCount];

                
        UIScrollView * sv;
        NSString * tFileName;
        UIImageView * imgvMenuItem;
        
        for (int i = 0; i < menuCount; i++) {
            
            //fuck
            if (i == 3) continue;
            //fuck
            if (i > 3) {
                sv = [[UIScrollView alloc] initWithFrame:CGRectMake(37 + 320 * i , 0, 310, 470)];
            } else {
                sv = [[UIScrollView alloc] initWithFrame:CGRectMake(357 + 320 * i , 0, 310, 470)];
            }
            
            sv.backgroundColor = [UIColor clearColor];
            sv.contentSize = CGSizeMake(310, 235 * pageCount[i] + 235);
            sv.scrollEnabled = NO;
            sv.showsHorizontalScrollIndicator = NO;
            sv.showsVerticalScrollIndicator = NO;
            
            for (int j = 0; j < pageCount[i]; j++) {
                
                tFileName = [[ShareData sharedInstance] getFileNameByHead:@"menu_pic" List:i Num:j];
                
                imgvMenuItem = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:tFileName]] autorelease];
                imgvMenuItem.frame = CGRectMake(0, 235 * j, 309, 230);
                [sv addSubview:imgvMenuItem];
                
                Mask * mask = [[[Mask alloc] initWithList:i Num:j] autorelease];
                mask.frame = CGRectMake(0, 235 * j, 309, 230);
                [sv addSubview:mask];
            }
            
            //fuck
            if (i > 3) {
                [menuList insertObject:sv atIndex:i-1];
            } else {
                [menuList insertObject:sv atIndex:i];
            }
            
            [self addSubview:sv]; 
            [sv release];
        } 
        
        ((UIScrollView *)[menuList objectAtIndex:0]).scrollEnabled = YES;
        
    }    
    return self;
}


-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{   
    //NSLog(@"DidEndDecelerating");
    int tx = 0;
    bool f = NO;
    
    while (!f) {
        if(scrollView.contentOffset.x - tx > 160) tx += 320;
        else f = YES;
    }
    
    [scrollView setContentOffset:CGPointMake(tx, 0) animated:YES];
    
    int ty = tx / 320;
    [[ShareData sharedInstance] setMenuListEnable:ty];
    
    // Const
    
    NSArray * menuName = [NSArray arrayWithObjects:
                          @"中海品牌",
                          @"高端区域",
                          @"盛世配套",
                          //@"项目分布总图", 
                          @"御湖一号", 
                          @"碧林湾",           
                          @"东郡",
                          @"观园",
                          @"御湖公馆",
                          @"中海峰墅",
                          @"中海熙岸",
                          @"紫御华府",
                          @"尊荣服务",
                          @"帮助",
                          nil];
    
    NSArray * menuNameEng = [NSArray arrayWithObjects:
                             @"ZHONGHAI BRAND",
                             @"HIGH AREA",
                             @"SHENG SHI",
                             //@"PROJECTS",
                             @"YU LAKE No.1",
                             @"BILIN BAY",
                             @"DONGJUN",
                             @"GUAN PARK",
                             @"YUHU RESIDENCE",
                             @"ZHONGHAI FENGSHU",
                             @"ZHONGHAI XIAN",
                             @"ZIYU HUAFU",
                             @"SERVICE",
                             @"HELP",
                             nil];
    
    // Animation 1
    
    [[ShareData sharedInstance].menuVC.btNameEng setAlpha:0.0f];
    [[ShareData sharedInstance].menuVC.btNameEng setTitle:[menuNameEng objectAtIndex:ty] forState:UIControlStateNormal];
    
    
    [UIView beginAnimations:@"xcodeImageAnimation"
                    context:[ShareData sharedInstance].menuVC.btNameEng];
    
    [UIView setAnimationDuration:1.0f];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDidStopSelector:@selector(imageViewDidStop:finished:context:)];
    
    [[ShareData sharedInstance].menuVC.btNameEng setAlpha:1.0f];
    [UIView commitAnimations];
    
    // Animation 2
    
    [[ShareData sharedInstance].menuVC.btName setAlpha:0.0f];
    [[ShareData sharedInstance].menuVC.btName setTitle:[menuName objectAtIndex:ty] forState:UIControlStateNormal];
    
    [UIView beginAnimations:@"xcodeImageAnimation"
                    context:[ShareData sharedInstance].menuVC.btName];
    
    [UIView setAnimationDuration:1.0f];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDidStopSelector:@selector(imageViewDidStop:finished:context:)];
    
    [[ShareData sharedInstance].menuVC.btName setAlpha:1.0f];
    [UIView commitAnimations];
}

-(void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView{
    //NSLog(@"DidEndScrolling");
}

-(void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
    //NSLog(@"DidEndDragging");
    if (!scrollView.isDragging) {    
        [self scrollViewDidEndDecelerating:scrollView];
    }
}

-(void)scrollViewDidEndZooming:(UIScrollView *)scrollView withView:(UIView *)view atScale:(float)scale{
    //NSLog(@"DidEndZooming");
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    
}

@end
