//
//  HelloView.m
//  helloworld
//
//  Created by Kenny Liou on 7/16/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "HelloView.h"


@implementation HelloView

- (id)initWithFrame:(NSRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
    }
    return self;
}

- (void)drawRect:(NSRect)dirtyRect {
    // Drawing code here.
	NSString* hello = @"Hello World!";
	NSPoint point = NSMakePoint(15, 75);
	NSMutableDictionary* font_attributes = [NSMutableDictionary new];
	NSFont* font = [NSFont fontWithName:@"Futura-MediumItalic" size:42];
	[font_attributes setObject:font forKey:NSFontAttributeName];
	[hello drawAtPoint:point withAttributes:font_attributes];
	[font_attributes release];
}

@end
