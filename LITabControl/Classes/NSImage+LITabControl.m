//
//  NSImage+LITabControl.m
//  LITabControl
//
//  Created by Mark Onyschuk on 11/13/2013.
//  Copyright (c) 2013 Mark Onyschuk. All rights reserved.
//

#import "NSImage+LITabControl.h"
#import "LITabControl.h"

@implementation NSImage (LITabControl)

- (NSImage *)imageWithTint:(NSColor *)color {
    NSRect imageRect = NSZeroRect; imageRect.size = self.size;
    NSImage *highlightImage = [[NSImage alloc] initWithSize:imageRect.size];
    
    [highlightImage lockFocus];
    
    [self drawInRect:imageRect fromRect:NSZeroRect operation:NSCompositeSourceOver fraction:1.0];
    
    [color set];
    NSRectFillUsingOperation(imageRect, NSCompositeSourceAtop);
    
    [highlightImage unlockFocus];

    return highlightImage;
}

+ (id) imageWithFileName:(NSString *) fileName inBundle:(NSBundle *)aBundle
{
	NSImage *img = nil;
	
	if (aBundle != nil)
	{
		NSString *imagePath;
		if ((imagePath = [aBundle pathForResource: fileName ofType:
						  nil]) != nil)
		{
			img = [[NSImage alloc] initWithContentsOfFile:imagePath];
		}
	}
	
	return img;
}

+ (id) imageWithFileName:(NSString *) fileName inBundleForClass:(Class) aClass
{
	return [self imageWithFileName: fileName inBundle: [NSBundle bundleForClass: aClass]];
}

+ (id) imageInFrameworkWithFileName:(NSString *) fileName
{
	NSBundle *aBundle = [NSBundle bundleForClass: [LITabControl class]];
	return [self imageWithFileName: fileName inBundle: aBundle];
}

@end
