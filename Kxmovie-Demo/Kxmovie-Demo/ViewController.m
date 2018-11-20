//
//  ViewController.m
//  Kxmovie-Demo
//
//  Created by frank.zhang on 2018/11/20.
//  Copyright © 2018 Frank.zhang. All rights reserved.
//

#import "ViewController.h"
#import "libavutil/avutil.h"
#import "KxMovieViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}
- (IBAction)PlayAction:(id)sender {
    NSString *path = @"http://fastwebcache.yod.cn/yanglan/2013suoluosi/2013suoluosi_850/2013suoluosi_850.m3u8";
    NSMutableDictionary *parameters = [NSMutableDictionary dictionary];
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
        parameters[KxMovieParameterDisableDeinterlacing] = @(YES);
    
    KxMovieViewController *vc = [KxMovieViewController movieViewControllerWithContentPath:path
                                                                               parameters:parameters];
    [self presentViewController:vc animated:YES completion:nil];
}


@end
