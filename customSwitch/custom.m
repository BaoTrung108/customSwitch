//
//  custom.m
//  customSwitch
//
//  Created by trung bao on 12/10/2015.
//  Copyright © 2015 baotrung. All rights reserved.
//

#import "custom.h"

@implementation custom
{
    UIButton *_buttonOn;
    UIButton *_buttonOff;
    
}
-(instancetype) initWithFrame:(CGRect)frame {
    self= [super initWithFrame:CGRectMake(frame.origin.x, frame.origin.y, 100, 50)];
    _buttonOn=[[UIButton alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
    _buttonOff=[[UIButton alloc] initWithFrame:CGRectMake(50, 0, 50, 50)];
    [_buttonOn addTarget:self
                  action:@selector(pressOn)
        forControlEvents:UIControlEventTouchUpInside];
    [_buttonOff addTarget:self
                   action:@selector(pressOff)
         forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:_buttonOn];
    [self addSubview:_buttonOff];
    self.value=true;
    return self;
}
-(void) pressOn {
    self.value=true;
}
-(void) pressOff {
    self.value=false;
}
-(BOOL) getvalue {
    return _value;
}
-(void) setValue:(BOOL)value {
    _value=value;
    if (_value) {
        [_buttonOn setImage:[UIImage imageNamed:@"pressOn"] forState:UIControlStateNormal];
        [_buttonOff setImage:[UIImage imageNamed:@"off"] forState:UIControlStateNormal];
    } else {
        [_buttonOn setImage:[UIImage imageNamed:@"on"] forState:UIControlStateNormal];
        [_buttonOff setImage:[UIImage imageNamed:@"pressOff"] forState:UIControlStateNormal];
    }
    [self sendActionsForControlEvents:UIControlEventValueChanged];
}
@end
