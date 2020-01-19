//
//  CustomViewController.m
//  Cocoa Mouse Events
//
//  Created by Nikola Grujic on 18/01/2020.
//  Copyright © 2020 Mac Developers. All rights reserved.
//

#import "CustomViewController.h"

@implementation CustomViewController

- (void)drawRect:(NSRect)dirtyRect
{
    [super drawRect:dirtyRect];
    
    NSRect bounds = [self bounds];
    [[NSColor brownColor] set];
    [NSBezierPath fillRect:bounds];
}

- (void)mouseDown:(NSEvent*)event
{
    NSLog(@"mouseDown called");
    NSLog(@"click count %ld", [event clickCount]);
    [self checkFlags:[event modifierFlags]];
    [self printLocation:[event locationInWindow]];
}

- (void)rightMouseDown:(NSEvent*)event
{
    NSLog(@"rightMouseDown called");
    [self checkFlags:[event modifierFlags]];
    [self printLocation:[event locationInWindow]];
}

- (void)otherMouseDown:(NSEvent*)event
{
    NSLog(@"otherMouseDown called");
    [self checkFlags:[event modifierFlags]];
    [self printLocation:[event locationInWindow]];
}

- (void)mouseUp:(NSEvent *)event
{
    NSLog(@"mouseUp called");
    [self checkFlags:[event modifierFlags]];
    [self printLocation:[event locationInWindow]];
}

- (void)rightMouseUp:(NSEvent *)event
{
    NSLog(@"rightMouseUp called");
    [self checkFlags:[event modifierFlags]];
    [self printLocation:[event locationInWindow]];
}

- (void)otherMouseUp:(NSEvent *)event
{
    NSLog(@"otherMouseUp called");
    [self checkFlags:[event modifierFlags]];
    [self printLocation:[event locationInWindow]];
}

- (void)mouseDragged:(NSEvent *)event
{
    NSLog(@"mouseDragged called");
    [self checkFlags:[event modifierFlags]];
    [self printLocation:[event locationInWindow]];
}

- (void)rightMouseDragged:(NSEvent *)event
{
    NSLog(@"rightMouseDragged called");
    [self checkFlags:[event modifierFlags]];
    [self printLocation:[event locationInWindow]];
}

- (void)otherMouseDragged:(NSEvent *)event
{
    NSLog(@"otherMouseDragged called");
    [self checkFlags:[event modifierFlags]];
    [self printLocation:[event locationInWindow]];
}

- (void)scrollWheel:(NSEvent *)event
{
    NSLog(@"scrollWheel called");
    [self checkFlags:[event modifierFlags]];
    [self printLocation:[event locationInWindow]];
}

- (void)checkFlags:(NSUInteger)flags
{
    if (flags & NSEventModifierFlagControl)
    {
        NSLog(@"control");
    }
    else if (flags & NSEventModifierFlagShift)
    {
        NSLog(@"shift");
    }
    else if (flags & NSEventModifierFlagCommand)
    {
        NSLog(@"command");
    }
    else if (flags & NSEventModifierFlagOption)
    {
        NSLog(@"alternate");
    }
}

- (void)printLocation:(NSPoint)location
{
    NSLog(@"x:%f y:%f",location.x, location.y);
}

@end
