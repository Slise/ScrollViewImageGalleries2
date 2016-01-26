//
//  DetailViewController.m
//  ScrollViewImageGalleries2
//
//  Created by Benson Huynh on 2016-01-25.
//  Copyright © 2016 Benson Huynh. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    return self.imageView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.detailImageView.scrollEnabled = YES;
    self.detailImageView.minimumZoomScale =1.0;
    self.detailImageView.maximumZoomScale=4.0;
    self.detailImageView.delegate = self;
    self.imageView  = [[UIImageView alloc] initWithImage:self.detailImage];
    self.imageView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.detailImageView addSubview:self.imageView];
    
    [self.detailImageView addConstraint:[NSLayoutConstraint constraintWithItem:self.imageView
                                                                     attribute:NSLayoutAttributeLeft
                                                                     relatedBy:NSLayoutRelationEqual
                                                                        toItem:self.detailImageView
                                                                     attribute:NSLayoutAttributeLeft
                                                                    multiplier:1.0
                                                                      constant:0.0]];
    
    [self.detailImageView addConstraint:[NSLayoutConstraint constraintWithItem:self.imageView
                                                                     attribute:NSLayoutAttributeRight
                                                                     relatedBy:NSLayoutRelationEqual
                                                                        toItem:self.detailImageView
                                                                     attribute:NSLayoutAttributeRight
                                                                    multiplier:1.0
                                                                      constant:0.0]];
    
    
    [self.detailImageView addConstraint:[NSLayoutConstraint constraintWithItem:self.imageView
                                                                     attribute:NSLayoutAttributeBottom
                                                                     relatedBy:NSLayoutRelationEqual
                                                                        toItem:self.detailImageView
                                                                     attribute:NSLayoutAttributeBottom
                                                                    multiplier:1.0
                                                                      constant:0.0]];
    
    [self.detailImageView addConstraint:[NSLayoutConstraint constraintWithItem:self.imageView
                                                                     attribute:NSLayoutAttributeTop
                                                                     relatedBy:NSLayoutRelationEqual
                                                                        toItem:self.detailImageView
                                                                     attribute:NSLayoutAttributeTop
                                                                    multiplier:1.0
                                                                      constant:0.0]];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
