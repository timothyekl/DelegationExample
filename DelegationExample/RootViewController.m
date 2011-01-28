//
//  RootViewController.m
//  DelegationExample
//
//  Created by Tim Ekl on 1/27/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "RootViewController.h"
#import "ColorPickerTableViewController.h"
#import "ColorView.h"

@implementation RootViewController

@synthesize colorView = _colorView;
@synthesize changeColorButton = _changeColorButton;

// IBAction for button presses
- (IBAction)receivedChangeColorButtonPress {
    ColorPickerTableViewController * pickerVC = [[[ColorPickerTableViewController alloc] initWithNibName:@"ColorPickerTableViewController" bundle:nil] autorelease];
    pickerVC.delegate = self;
    [self.navigationController pushViewController:pickerVC animated:YES];
}

// Delegate method - update color in this controller's ColorView, then
// require that view to redraw itself
- (void)pickedColor:(UIColor *)color {
    self.colorView.color = color;
    [self.colorView setNeedsDisplay];
}

@end
