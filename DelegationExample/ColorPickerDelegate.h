//
//  ColorPickerDelegate.h
//  DelegationExample
//
//  Created by Tim Ekl on 1/27/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol ColorPickerDelegate <NSObject>

- (void)pickedColor:(UIColor *)color;

@end
