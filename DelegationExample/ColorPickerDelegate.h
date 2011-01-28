//
//  ColorPickerDelegate.h
//  DelegationExample
//
//  Created by Tim Ekl on 1/27/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

// The delegate protocol for picking a color. Objects conforming to this
// protocol must respond when sent a pickedColor: message.
@protocol ColorPickerDelegate <NSObject>

- (void)pickedColor:(UIColor *)color;

@end
