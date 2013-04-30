//
//  UIScrollView+APParallaxHeader.h
//
//  Created by Mathias Amnell on 2013-04-12.
//  Copyright (c) 2013 Apping AB. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@class APParallaxView;
@class ShadowView;

@interface UIScrollView (APParallaxHeader)

- (void)addParallaxWithMapView:(MKMapView *)mapView andHeight:(CGFloat)height;

@property (nonatomic, strong, readonly) APParallaxView *parallaxView;
@property (nonatomic, assign) BOOL showsParallax;

@end

enum {
    APParallaxTrackingActive = 0,
    APParallaxTrackingInactive
};

typedef NSUInteger APParallaxTrackingState;

@interface APParallaxView : UIView

@property (nonatomic, readonly) APParallaxTrackingState state;
@property (nonatomic, strong) UIView *contentView;
@property (nonatomic, strong) ShadowView *shadowView;

@end
