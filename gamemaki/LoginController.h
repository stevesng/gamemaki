//
//  HomeController.h
//  gamemaki
//
//  Created by Socialico on 6/30/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Three20/Three20.h>
#import <UIKit/UIKit.h>
#import "FBConnect.h"

@interface LoginController : TTViewController
<FBRequestDelegate,
FBDialogDelegate,
FBSessionDelegate>{
    UIButton* _fbLoginBtn;
    TTStyledTextLabel* _loadingLabel;
}

-(IBAction)fbLoginBtnClick:(id)sender;
-(IBAction)fbLogoutBtnClick:(id)sender;
-(void)addSecretKeyAndId:(NSString *)key :(NSString*)userId;

@end
