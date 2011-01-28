//
//  RootViewController.h
//  DelegationExample
//
//  Created by Tim Ekl on 1/27/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "ColorPickerDelegate.h"

@class ColorView;

@interface RootViewController : UIViewController <ColorPickerDelegate> {
@private
    ColorView * _colorView;
    UIButton * _changeColorButton;
}

@property (nonatomic, retain) IBOutlet ColorView * colorView;
@property (nonatomic, retain) IBOutlet UIButton * changeColorButton;

- (IBAction)receivedChangeColorButtonPress;

@end
