//
//  ColorPickerTableViewController.h
//  DelegationExample
//
//  Created by Tim Ekl on 1/27/11.
//  Copyright 2011 Tim Ekl. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "ColorPickerDelegate.h"

@interface ColorPickerTableViewController : UITableViewController {
@private
    id<ColorPickerDelegate> _delegate;
}

@property (nonatomic, assign) id<ColorPickerDelegate> delegate;

@end
