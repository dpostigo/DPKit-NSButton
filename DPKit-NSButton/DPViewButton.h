//
// Created by Dani Postigo on 2/7/14.
//

#import <Foundation/Foundation.h>

@interface DPViewButton : NSButton {

    BOOL isMouseDown;
    CALayer *overlay;
}

@property(nonatomic) BOOL isMouseDown;
@property(nonatomic, strong) CALayer *overlay;
@end