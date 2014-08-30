//
//  MasterViewController.m
//  APParallaxHeaderDemo
//
//  Created by Mathias Amnell on 2013-04-12.
//  Copyright (c) 2013 Apping AB. All rights reserved.
//

#import "MasterViewController.h"

#import "UIScrollView+APParallaxHeader.h"

@interface MasterViewController ()
- (void) tap:(UIGestureRecognizer*)gesture;
@end

@implementation MasterViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    UIImageView* imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"ParallaxImage.jpg"]];
    [imageView addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap:)]];
    [self.tableView addParallaxWithView:imageView andHeight:160];
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 30;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];

    cell.textLabel.text = [NSString stringWithFormat:@"Row %i", indexPath.row+1];
    return cell;
}

- (void)tap:(UIGestureRecognizer *)gesture
{
    NSLog(@"Image tapped!");
}

@end
