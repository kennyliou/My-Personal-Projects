//
//  iSight.m
//  myMirror
//
//  Created by Kenny Liou on 7/16/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "iSight.h"


@implementation iSight

- (void) awakeFromNib 
{
	//Create the QT capture session
	QTCaptureSession *session = [[QTCaptureSession alloc] init];
	/* Select the default Video input device */
	QTCaptureDevice *iSight = [QTCaptureDevice defaultInputDeviceWithMediaType:QTMediaTypeVideo];
	
	/* Passing nil for the NSError parameter may not be the best idea
	 but i will leave error handling up to you */
	[iSight open:nil];
	/* Create a QTKit input for the session using the iSight Device */
	QTCaptureDeviceInput *myInput = [QTCaptureDeviceInput deviceInputWithDevice:iSight];
	
	/* Add inputs get the ball rolling etc */
	[session addInput:myInput error:nil];
	[outputView setCaptureSession:session];
	
	/* Let the video madness begin */
	[session startRunning]; 
}

@end
