//
// Created by Dani Postigo on 2/12/14.
//

#import "NSButton+DPButtonCell.h"
#import "DPButtonCell.h"

@implementation NSButton (DPButtonCell)

- (DPButtonCell *) customButtonCell {
    return [self.cell isKindOfClass: [DPButtonCell class]] ? self.cell : nil;
}
@end