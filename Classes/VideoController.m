//
//  VideoController.m
//  videomonkey
//
//  Created by Andrew Vizor on 09/03/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "VideoController.h"
#import "Video.h"

@implementation VideoController

@synthesize videoLibrary;

 - (NSDictionary *)getVideoDictionary:(NSString *)fileName {  
    return (NSDictionary *)[self readPlist:fileName];  
 }

- (id)readPlist:(NSString *)fileName {  
	NSData *plistData;  
	NSString *error;  
	NSPropertyListFormat format;  
	id plist;  

	NSString *localizedPath = [[NSBundle mainBundle] pathForResource:fileName ofType:@"plist"];  
	plistData = [NSData dataWithContentsOfFile:localizedPath];   
	plist = [NSPropertyListSerialization propertyListFromData:plistData mutabilityOption:NSPropertyListImmutable format:&format errorDescription:&error];  
	if (!plist) 
	{  
		NSLog(@"Error reading plist from file '%s', error = '%s'", [localizedPath UTF8String], [error UTF8String]);  
		[error release];  
	}
	return plist;  
}  

- (void)createVideos
{
	NSDictionary *videos = [self getVideoDictionary:@"VideoContent"];	
	
	//NSLog(@"MOnkeys %@",videos);
	
	self.videoLibrary = [[NSMutableArray alloc] init];
	for(NSDictionary *detail in [videos objectForKey:@"AllVideos"])
	{
		Video *vid = [[Video alloc] init];
		vid.videoId = [[detail objectForKey:@"Id"] intValue];
		vid.videoTitle = [detail objectForKey:@"Title"];
		vid.videoDescription = [detail objectForKey:@"Description"];
		vid.videoFile = [detail objectForKey:@"VideoFile"];
		
		[self.videoLibrary addObject: vid];

		NSLog(@"VideoTitle %i", vid.videoId);
		NSLog(@"VideoTitle %@", vid.videoTitle);
		NSLog(@"VideoDescription %@", vid.videoDescription);
		NSLog(@"VideoFile %@", vid.videoFile);
	}
}

-(void)dealloc
{
	self.videoLibrary = nil;
	
	[super dealloc];
}

@end
