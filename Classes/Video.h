//
//  Video.h
//  Videomonkey
//
//  Created by Andrew Vizor on 09/03/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Video : NSObject {
	
	NSString *videoTitle, *videoDescription, *videoFile;
	int videoId;
}

@property (nonatomic, retain) NSString *videoTitle, *videoDescription, *videoFile;
@property (nonatomic, assign) int videoId;

@end
