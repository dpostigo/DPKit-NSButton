//
// Created by Dani Postigo on 2/7/14.
//

#import "NSButton+DPViewButtonCell.h"
#import "DPViewButtonCell.h"

@implementation NSButton (DPViewButtonCell)

- (DPViewButtonCell *) viewButtonCell {
    return [[self cell] isKindOfClass: [DPViewButtonCell class]] ? [self cell] : nil;
}
@end