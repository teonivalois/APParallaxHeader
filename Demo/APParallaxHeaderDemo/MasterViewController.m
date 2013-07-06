//
//  MasterViewController.m
//  APParallaxHeaderDemo
//
//  Created by Mathias Amnell on 2013-04-12.
//  Copyright (c) 2013 Apping AB. All rights reserved.
//

#import "MasterViewController.h"
#import <MapKit/MapKit.h>
#import "UIScrollView+APParallaxHeader.h"

@implementation MasterViewController

MKMapView *mapView;

- (void)viewDidLoad
{
    [super viewDidLoad];

    mapView = [[MKMapView alloc] init];
    
    [self.tableView addParallaxWithMapView:mapView andHeight:160];
}

- (void) viewDidAppear:(BOOL)animated
{
    NSLog(@"viewDidAppear: %@", NSStringFromCGRect(mapView.frame));
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

@end
