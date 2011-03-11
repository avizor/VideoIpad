//
//  VideoSelectionDelegate.h
//  VideoIpad
//
//  Created by Andrew Vizor on 10/03/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Video;

@protocol VideoSelectionDelegate
-(void)playVideo:(Video *)curSelection;

@end
