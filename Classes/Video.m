//
//  Video.m
//  Videomonkey
//
//  Created by Andrew Vizor on 09/03/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Video.h"

@implementation Video 

@synthesize videoTitle, videoDescription, videoFile;
@synthesize videoId;


-(NSString *)description
{
	return [NSString stringWithFormat:@"%@", videoFile];
}

/**/

-(void)dealloc
{
	self.videoTitle = nil;
	self.videoDescription = nil;
	self.videoFile = nil;
	
	[super dealloc];
}

@end
