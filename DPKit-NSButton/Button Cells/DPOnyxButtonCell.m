//
// Created by Dani Postigo on 3/3/14.
//

#import <NSColor-Crayola/NSColor+Crayola.h>
#import "DPOnyxButtonCell.h"
#import "NSColor+BlendingUtils.h"
#import "DPKitStyles.h"

@implementation DPOnyxButtonCell

- (void) setupColors {
    [super setupColors];

    buttonBorderColor = [NSColor colorWithDeviceWhite: 0.0 alpha: 0.4];

    NSColor *topColor = [DPKitStyles onyxHighlightColor];
    NSColor *bottomColor = [NSColor crayolaOnyxColor];
    self.buttonGradient = [[NSGradient alloc] initWithStartingColor: bottomColor endingColor: topColor];

    buttonTitleShadow.shadowColor = [bottomColor darken: 0.1];
    //    buttonTitleShadow.shadowBlurRadius = 0.5;
    buttonTitleShadow.shadowOffset = NSMakeSize(0.0, 1);
}

@end