//
//  View.m
//  Dec13
//
//  Created by NYU User on 12/8/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "View.h"

@implementation View

- (id) initWithFrame: (CGRect) frame
{
	self = [super initWithFrame: frame];
	if (self) {
		// Initialization code
		self.backgroundColor = [UIColor whiteColor];
	}
	return self;
}


- (void) showAlert: (NSTimer *) timer {
    
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle: @"Application LaunchPad"
                                                    message: @"Application Launched"
                                                   delegate: timer.userInfo	//the ViewController
                                          cancelButtonTitle: @"Cancel"
                                          otherButtonTitles: @"LaunchGame", nil	//salute to MS-DOS
                          ];
    
	[alert show];
	[timer invalidate];
}

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void) drawRect: (CGRect) rect
 {
 // Drawing code
 }
 */

@end
