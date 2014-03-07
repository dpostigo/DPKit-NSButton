//
// Created by Dani Postigo on 2/7/14.
//

#import "DPViewButton.h"

@implementation DPViewButton

@synthesize isMouseDown;

@synthesize overlay;

- (void) awakeFromNib {
    [super awakeFromNib];

    self.wantsLayer = YES;

}


- (void) mouseDown: (NSEvent *) theEvent {
    NSLog(@"%s", __PRETTY_FUNCTION__);
    [super mouseDown: theEvent];
    isMouseDown = YES;
}

- (void) mouseExited: (NSEvent *) theEvent {
    NSLog(@"%s", __PRETTY_FUNCTION__);
    [super mouseExited: theEvent];
}


@end