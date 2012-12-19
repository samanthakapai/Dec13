
#import "ViewController.h"
#import "View.h"

//four buttons in the UIAlertView
enum {
    Cancel,
	LaunchGame,
	LaunchSelf
};


@implementation ViewController

/*
 - (id) initWithNibName: (NSString *) nibNameOrNil bundle: (NSBundle *)nibBundleOrNil
 {
 self = [super initWithNibName:nibNameOrNil bundle: nibBundleOrNil];
 if (self) {
 // Custom initialization
 }
 return self;
 }
 */

- (void) didReceiveMemoryWarning
{
	// Releases the view if it doesn't have a superview.
	[super didReceiveMemoryWarning];
    
	// Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void) loadView
{
	CGRect frame = [UIScreen mainScreen].applicationFrame;
	self.view = [[View alloc] initWithFrame: frame];
}



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void) viewDidLoad
{
	[super viewDidLoad];
    
	[NSTimer scheduledTimerWithTimeInterval: 2
                                     target: self.view
                                   selector: @selector(showAlert:)
                                   userInfo: self
                                    repeats: NO
     ];
}


- (void) viewDidUnload
{
	[super viewDidUnload];
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (BOOL) shouldAutorotateToInterfaceOrientation: (UIInterfaceOrientation) interfaceOrientation
{
	// Return YES for supported orientations
	//return (interfaceOrientation == UIInterfaceOrientationPortrait);
	return YES;
}

#pragma mark -
#pragma mark Method of protocol UIAlertViewDelegate

- (void) alertView: (UIAlertView *) alertView clickedButtonAtIndex: (NSInteger) buttonIndex {
	
	switch (buttonIndex) {
        case Cancel:
            NSLog(@"Selected cancel from UIAlertView.");
            break;
            
        case LaunchGame:
            //	NSLog(@"Selected Retry from UIAlertView.");
            //break;
        {
            NSLog(@"Launching Application.");
            NSURL *url=[NSURL URLWithString: @"Nov1:"];
            UIApplication *application = [UIApplication sharedApplication];
            
            if (![application canOpenURL: url]) {
                NSLog(@"Can't open url %@.", url);
                break;
            }
            
            if (![application openURL: url]) {
                NSLog(@"failed to open URL %@", url);
            }
            break;
        }
            
                    
            
	}
}


@end

