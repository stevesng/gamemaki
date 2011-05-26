//
//  TabMenuController.m
//  gamemaki
//
//  Created by Damon Widjaja on 5/26/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "TabMenuController.h"

@implementation TabMenuController
@synthesize page = _page;

- (NSString*)nameForMenuPage:(MenuPage)page {
    switch (page) {
        case MenuHome:
            return @"Home";
        case MenuChallenges:
            return @"Challenges";
        case MenuMe:
            return @"Me";
        default:
            return @"";
    }
}

- (id)initWithMenu:(MenuPage)page {
    if (self == [super init]) {
        self.page = page;
    }
    return self;
}

- (id)init {
    if (self == [super init]) {
        _page = MenuNone;
    }
    return self;
}

- (void)dealloc {
    TT_RELEASE_SAFELY(_tabBar1);
    TT_RELEASE_SAFELY(_tabBar2);
    TT_RELEASE_SAFELY(_tabBar3);
    [super dealloc];
}

- (void)setPage:(MenuPage)page {
    _page = page;
    
    self.title = [self nameForMenuPage:page];
	self.variableHeightRows = YES;
    
	if (_page == MenuHome) {
		UIImage* image = [UIImage imageNamed:@"home.png"];
		self.tabBarItem = [[[UITabBarItem alloc] initWithTitle:self.title image:image tag:0] autorelease];
	} else if (_page == MenuChallenges) {
		UIImage* image = [UIImage imageNamed:@"challenges.png"];
		self.tabBarItem = [[[UITabBarItem alloc] initWithTitle:self.title image:image tag:1] autorelease];	
	} else if (_page == MenuMe) {
		UIImage* image = [UIImage imageNamed:@"me.png"];
		self.tabBarItem = [[[UITabBarItem alloc] initWithTitle:self.title image:image tag:2] autorelease];
    }
    
    if (_page == MenuChallenges) {
        self.dataSource = [TTSectionedDataSource dataSourceWithObjects:
			@"",
			[TTTableSubtitleItem itemWithText:@"Latest" subtitle:@"" imageURL:nil defaultImage:TTIMAGE(@"bundle://new.png") URL:@"tt://challengesList" accessoryURL:nil],
			
			@"Categories",
			[TTTableSubtitleItem itemWithText:@"Arts & Culture" subtitle:@"" imageURL:nil  defaultImage:TTIMAGE(@"bundle://category_arts_culture.png") URL:@"tt://food/macncheese" accessoryURL:nil],
			[TTTableSubtitleItem itemWithText:@"Education" subtitle:@"" imageURL:nil  defaultImage:TTIMAGE(@"bundle://category_education.png") URL:@"tt://food/macncheese" accessoryURL:nil],
			[TTTableSubtitleItem itemWithText:@"Entertainment" subtitle:@"" imageURL:nil  defaultImage:TTIMAGE(@"bundle://category_entertainment.png") URL:@"tt://food/macncheese" accessoryURL:nil],
			[TTTableSubtitleItem itemWithText:@"Sports & Fitness" subtitle:@"" imageURL:nil  defaultImage:TTIMAGE(@"bundle://category_sports_fitness.png") URL:@"tt://food/macncheese" accessoryURL:nil],
			[TTTableSubtitleItem itemWithText:@"Photography" subtitle:@"" imageURL:nil  defaultImage:TTIMAGE(@"bundle://category_photography.png") URL:@"tt://food/macncheese" accessoryURL:nil],
			[TTTableSubtitleItem itemWithText:@"Productivity" subtitle:@"" imageURL:nil  defaultImage:TTIMAGE(@"bundle://category_productivity.png") URL:@"tt://food/macncheese" accessoryURL:nil],
			[TTTableSubtitleItem itemWithText:@"Shopping" subtitle:@"" imageURL:nil  defaultImage:TTIMAGE(@"bundle://category_shopping.png") URL:@"tt://food/macncheese" accessoryURL:nil],
			[TTTableSubtitleItem itemWithText:@"Technology" subtitle:@"" imageURL:nil  defaultImage:TTIMAGE(@"bundle://category_science_tech.png") URL:@"tt://food/macncheese" accessoryURL:nil],
			[TTTableSubtitleItem itemWithText:@"Travel" subtitle:@"" imageURL:nil  defaultImage:TTIMAGE(@"bundle://category_travel.png") URL:@"tt://food/macncheese" accessoryURL:nil],
			[TTTableSubtitleItem itemWithText:@"Wine & Dine" subtitle:@"" imageURL:nil  defaultImage:TTIMAGE(@"bundle://category_food_beverage.png") URL:@"tt://food/macncheese" accessoryURL:nil],
			[TTTableSubtitleItem itemWithText:@"Others" subtitle:@"" imageURL:nil  defaultImage:TTIMAGE(@"bundle://category_web_social.png") URL:@"tt://food/macncheese" accessoryURL:nil],
			[TTTableSubtitleItem itemWithText:@"Just for Fun" subtitle:@"" imageURL:nil  defaultImage:TTIMAGE(@"bundle://category_just_for_fun.png") URL:@"tt://food/macncheese" accessoryURL:nil],
		nil];
    }
}

@end
