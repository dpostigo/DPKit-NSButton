//
// Created by Dani Postigo on 2/7/14.
//


#import <CALayer-DPUtils/CALayer+ConstraintUtils.h>
#import "DPViewButtonCell.h"
//#import "CALayer+ConstraintUtils.h"
#import "NSCell+DPKit.h"
#import "NSView+DPFrameUtils.h"

@implementation DPViewButtonCell

- (void) drawInteriorWithFrame: (NSRect) cellFrame inView: (NSView *) controlView {
    [super drawInteriorWithFrame: cellFrame inView: controlView];
}

- (void) drawWithFrame: (NSRect) cellFrame inView: (NSView *) controlView {
    [super drawWithFrame: cellFrame inView: controlView];

    NSRect drawingRect = [self drawingRectForBounds: cellFrame];

    drawingRect.origin = NSMakePoint(0, 0);
    drawingRect = NSInsetRect(self.controlBounds, 6, 5);
    drawingRect.origin.y -= 1;

    self.overlayLayer.frame = drawingRect;

    if (self.overlayLayer) {
        [self.controlView.layer addSublayer: self.overlayLayer];
        [self.controlView setNeedsDisplay: YES];
        self.overlayLayer.opacity = self.isHighlighted ? 1 : 0;
    }
}


- (CALayer *) overlayLayer {
    if (overlayLayer == nil) {
        overlayLayer = [CALayer layer];
        self.controlView.wantsLayer = YES;
        [self.controlView.layer makeSuperlayer];
        [self.controlView.layer addSublayer: overlayLayer];
        //        [overlayLayer superConstrainEdges: 0];
        overlayLayer.backgroundColor = [NSColor colorWithDeviceWhite: 0.0 alpha: 0.5].CGColor;
    }
    return overlayLayer;
}
@end