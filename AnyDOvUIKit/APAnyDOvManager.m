//
//  APAnyDOvManager.m
//  AnyDOv
//
//  Created by shai@any.do on 03/01/2017, using AnimaApp.com, under MIT license.
//  Copyright © 2017 Company Name. All rights reserved.
//

#import "APAnyDOvManager.h"

@implementation APAnyDOvManager

+ (instancetype)shared {
    static APAnyDOvManager *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [APAnyDOvManager new];
    });
    return shared;
}

#pragma mark - Setup

- (instancetype)init {
    self = [super init];
    if (self) {
        [self setupTheme];
    }
    return self;
}

- (void)setupTheme {
    self.theme = [ANTheme new];
    self.theme.navBarColor          = [UIColor colorWithRed:0.98 green:0.98 blue:0.98 alpha:1.0];
    self.theme.navBarButtonsColor   = [UIColor colorWithRed:0.0 green:0.42 blue:1.0 alpha:1.0];
    self.theme.navBarTitleColor     = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
    self.theme.navBarTitleFontSize  = 16;
    self.theme.navBarIsTranslucent  = NO;
}

#pragma mark - Helpers

- (UIStoryboard *)animaStoryboard {
    return [UIStoryboard storyboardWithName:@"AnyDOvUIKit" bundle:[NSBundle bundleForClass:self.class]];
}

- (UIViewController *)initialVC {
    return [self.animaStoryboard instantiateInitialViewController];
}

@end