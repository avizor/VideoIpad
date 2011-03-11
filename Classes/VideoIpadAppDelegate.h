//
//  VideoIpadAppDelegate.h
//  VideoIpad
//
//  Created by Andrew Vizor on 10/03/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class LeftViewController;
@class RightViewController;

@interface VideoIpadAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    UISplitViewController *_splitViewController;
    LeftViewController *_leftViewController;
    RightViewController *_rightViewController;	
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UISplitViewController *splitViewController;
@property (nonatomic, retain) IBOutlet LeftViewController *leftViewController;
@property (nonatomic, retain) IBOutlet RightViewController *rightViewController;

@end

