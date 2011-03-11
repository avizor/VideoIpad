//
//  VideoController.h
//  videomonkey
//
//  Created by Andrew Vizor on 09/03/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface VideoController : NSObject {
	NSMutableArray *videoLibrary;
}

@property (nonatomic, retain) NSMutableArray *videoLibrary;

- (void)createVideos;
- (NSDictionary*)getVideoDictionary:(NSString*)fileName;


@end
