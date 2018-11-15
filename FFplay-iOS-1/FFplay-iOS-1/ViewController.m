//
//  ViewController.m
//  FFplay-iOS-1
//
//  Created by frank.zhang on 2018/11/14.
//  Copyright © 2018 Frank.zhang. All rights reserved.
//

#import "ViewController.h"
#import "libavutil/avutil.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.textView.text = [NSString stringWithFormat:@"%s",avutil_configuration()];
}

@end
