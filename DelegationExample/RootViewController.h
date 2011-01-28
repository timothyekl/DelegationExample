//
//  RootViewController.h
//  DelegationExample
//
//  Created by Tim Ekl on 1/27/11.
//  Copyright 2011 Tim Ekl. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "ColorPickerDelegate.h"

@class ColorView;

// Main view controller for the app; tracks a ColorView and the button to
// show the color picker
@interface RootViewController : UIViewController <ColorPickerDelegate> {
@private
    ColorView * _colorView;
    UIButton * _changeColorButton;
}

@property (nonatomic, retain) IBOutlet ColorView * colorView;
@property (nonatomic, retain) IBOutlet UIButton * changeColorButton;

- (IBAction)receivedChangeColorButtonPress;

@end
