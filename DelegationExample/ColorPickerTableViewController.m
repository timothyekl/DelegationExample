//
//  ColorPickerTableViewController.m
//  DelegationExample
//
//  Created by Tim Ekl on 1/27/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ColorPickerTableViewController.h"


@implementation ColorPickerTableViewController

@synthesize delegate = _delegate;

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
    // Configure the cell...
    NSInteger row = [indexPath row];
    switch(row) {
        case 0: cell.textLabel.text = @"Blue"; break;
        case 1: cell.textLabel.text = @"Red"; break;
        case 2: cell.textLabel.text = @"Green"; break;
        default: cell.textLabel.text = @"Black"; break;
    }
    
    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {   
    NSInteger row = [indexPath row];
    switch(row) {
        case 0: [self.delegate pickedColor:[UIColor blueColor]]; break;
        case 1: [self.delegate pickedColor:[UIColor redColor]]; break;
        case 2: [self.delegate pickedColor:[UIColor greenColor]]; break;
        default: [self.delegate pickedColor:[UIColor blackColor]]; break;
    }
    
    [self.navigationController popViewControllerAnimated:YES];
}

@end
