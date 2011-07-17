//
//  iSight.h
//  myMirror
//
//  Created by Kenny Liou on 7/16/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <QTKit/QTKit.h>


@interface iSight : NSObject {
	IBOutlet QTCaptureView *outputView;
}

@end
