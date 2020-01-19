//
//  CustomViewController.h
//  Cocoa Mouse Events
//
//  Created by Nikola Grujic on 18/01/2020.
//  Copyright © 2020 Mac Developers. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface CustomViewController : NSView

- (void)checkFlags:(NSUInteger)flags;
- (void)printLocation:(NSPoint)location;

@end
