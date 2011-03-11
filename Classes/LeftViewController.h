//
//  LeftViewController.h
//  VideoIpad
//
//  Created by Andrew Vizor on 10/03/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VideoController.h"
#import "VideoSelectionDelegate.h"

@interface LeftViewController : UITableViewController {
	VideoController *videoController;
	id<VideoSelectionDelegate> _delegate;
}

@property (nonatomic, retain) VideoController *videoController;
@property (nonatomic, assign) id<VideoSelectionDelegate> delegate;

@end
