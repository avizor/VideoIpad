//
//  RightViewController.h
//  VideoIpad
//
//  Created by Andrew Vizor on 10/03/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>
#import "Video.h"
#import "VideoSelectionDelegate.h"

@interface RightViewController : UIViewController <VideoSelectionDelegate> {
	Video *video;
}

- (void)playVideo;

@property (retain) Video *video;

@end
