//
//  TabBarController.m
//  gamemaki
//
//  Created by Damon Widjaja on 5/26/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "TabBarController.h"


@implementation TabBarController

- (void)viewDidLoad {
    [self setTabURLs:[NSArray arrayWithObjects:
                      @"tt://users/me/challenges",
                      @"tt://menu/2",
                      @"tt://camera/me",
                      @"tt://map/me",
                      @"tt://location/me/challenges",
                      nil]];
}

@end