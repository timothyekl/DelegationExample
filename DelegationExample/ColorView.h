//
//  ColorView.h
//  DelegationExample
//
//  Created by Tim Ekl on 1/27/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ColorView : UIView {
@private
    UIColor * _color;
}

@property (nonatomic, retain) UIColor * color;

@end
