    //
//  RightViewController.m
//  VideoIpad
//
//  Created by Andrew Vizor on 10/03/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "RightViewController.h"

@implementation RightViewController

@synthesize video;

 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}
*/

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/

- (void)viewWillAppear:(BOOL)animated {
	[super viewWillAppear:animated];
}

- (void)playVideo:(Video *)curSelection
{
	if(curSelection != NULL)
	{
		self.video = curSelection;
	//NSLog(@"viewing video: %@", self.videoToView.videoFile);
	
	NSLog(@"Video: %@",self.video);
	
	//NSString *moviePath = [[NSBundle mainBundle] pathForResource:@"pl_monkeybro" ofType:@"mov"];
	NSString *moviePath = [[NSBundle mainBundle] pathForResource:self.video.videoFile ofType:@"mov"];
	
	NSURL *movieURL = [NSURL fileURLWithPath:moviePath isDirectory:NO];
	//NSURL *videoURL = [NSURL URLWithString:@"pl_monkeybro" ofType:];
	
	MPMoviePlayerViewController *moviePlayer = [[MPMoviePlayerViewController alloc] initWithContentURL:movieURL];
	[self presentMoviePlayerViewControllerAnimated:moviePlayer];	
	}
}



- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Overriden to allow any orientation.
    return YES;
}


- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}


- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
	self.video = nil;
    [super dealloc];
}


@end
