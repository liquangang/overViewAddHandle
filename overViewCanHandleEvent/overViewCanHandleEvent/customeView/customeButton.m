//
//  customeButton.m
//  codeTest1
//
//  Created by biyao on 2017/3/22.
//  Copyright © 2017年 biyao. All rights reserved.
//

#import "customeButton.h"

@implementation customeButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    if (!self.isUserInteractionEnabled
        || self.isHidden
        || self.alpha <= 0.01)
    {
        return nil;
    }
    else
    {
        for (UIView *subView in [self.subviews reverseObjectEnumerator]) {
            CGPoint convertedPoint = [subView convertPoint:point fromView:self];
            UIView *hitView = [subView hitTest:convertedPoint withEvent:event];
            if (hitView)
            {
                return hitView;
            }
        }
        return self;
    }
}

@end
