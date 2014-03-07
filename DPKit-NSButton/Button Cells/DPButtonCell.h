//
// Created by Dani Postigo on 2/8/14.
//

#import <Foundation/Foundation.h>

@interface DPButtonCell : NSButtonCell {
    CGFloat cornerRadius;
    NSColor *highlightOverlayColor;
    NSShadow *checkboxCheckmarkShadow;

    NSColor *buttonBorderColor;
    NSColor *buttonHighlightColor;
    CGFloat buttonDisabledAlpha;
    NSShadow *buttonDropShadow;
    NSGradient *buttonGradient;
    NSShadow *buttonTitleShadow;
    NSShadow *checkboxTitleShadow;
    NSColor *disabledTextColor;
    NSColor *textColor;
    NSFont *textFont;

}

@property(nonatomic) CGFloat cornerRadius;
@property(nonatomic) CGFloat buttonDisabledAlpha;

@property(nonatomic, strong) NSFont *textFont;
@property(nonatomic, strong) NSColor *textColor;

@property(nonatomic, strong) NSShadow *checkboxCheckmarkShadow;
@property(nonatomic, strong) NSShadow *buttonDropShadow;
@property(nonatomic, strong) NSColor *highlightOverlayColor;
@property(nonatomic, strong) NSGradient *buttonGradient;
@property(nonatomic, strong) NSColor *buttonBorderColor;
@property(nonatomic, strong) NSColor *buttonHighlightColor;
@property(nonatomic, strong) NSShadow *buttonTitleShadow;
@property(nonatomic, strong) NSShadow *checkboxTitleShadow;


@property(nonatomic, strong) NSColor *disabledTextColor;
- (BOOL) isBlueButton;
- (void) setupColors;
- (void) drawButtonBezelWithFrame: (NSRect) frame inView: (NSView *) controlView;
- (void) drawCheckboxBezelWithFrame: (NSRect) frame inView: (NSView *) controlView;
- (NSRect) drawButtonTitle: (NSAttributedString *) title withFrame: (NSRect) frame inView: (NSView *) controlView;
- (NSRect) drawCheckboxTitle: (NSAttributedString *) title withFrame: (NSRect) frame inView: (NSView *) controlView;
- (NSBezierPath *) checkmarkPathForRect: (NSRect) rect mixed: (BOOL) mixed;

@end