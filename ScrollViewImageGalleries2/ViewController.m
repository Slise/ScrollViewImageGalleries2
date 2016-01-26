//
//  ViewController.m
//  ScrollViewImageGalleries2
//
//  Created by Benson Huynh on 2016-01-25.
//  Copyright © 2016 Benson Huynh. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIScrollView *mainImageView;
@property (strong, nonatomic) UIImageView *lighthouse;
@property (strong, nonatomic) UIImageView *lighthouseInField;
@property (strong, nonatomic) UIImageView *lighthouseAtNight;
@property (strong, nonatomic) UIImageView *selectedImage;
@property (strong, nonatomic) UITapGestureRecognizer *handleTap;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //add 3 image to scrollview
    UIImage *lightouse = [UIImage imageNamed:@"Lighthouse.jpeg"];
    UIImageView *light  = [[UIImageView alloc] initWithImage:lightouse];
    light.userInteractionEnabled = YES;
    light.translatesAutoresizingMaskIntoConstraints = NO;
    self.lighthouse = light;
    
    [self.mainImageView addSubview:light];
    
    [self.mainImageView addConstraint:[NSLayoutConstraint constraintWithItem:light
                                                                     attribute:NSLayoutAttributeLeft
                                                                     relatedBy:NSLayoutRelationEqual
                                                                        toItem:self.mainImageView
                                                                     attribute:NSLayoutAttributeLeft
                                                                    multiplier:1.0
                                                                      constant:0.0]];
    
    [self.mainImageView addConstraint:[NSLayoutConstraint constraintWithItem:light
                                                                     attribute:NSLayoutAttributeBottom
                                                                     relatedBy:NSLayoutRelationEqual
                                                                        toItem:self.mainImageView
                                                                     attribute:NSLayoutAttributeBottom
                                                                    multiplier:1.0
                                                                      constant:0.0]];
    
    [self.mainImageView addConstraint:[NSLayoutConstraint constraintWithItem:light
                                                                     attribute:NSLayoutAttributeTop
                                                                     relatedBy:NSLayoutRelationEqual
                                                                        toItem:self.mainImageView
                                                                     attribute:NSLayoutAttributeTop
                                                                    multiplier:1.0
                                                                      constant:0.0]];
    
    
    NSLayoutConstraint *lighthouseViewWidth = [NSLayoutConstraint constraintWithItem:light
                                                                           attribute:NSLayoutAttributeWidth
                                                                           relatedBy:NSLayoutRelationEqual
                                                                              toItem:self.mainImageView
                                                                           attribute:NSLayoutAttributeWidth
                                                                          multiplier:1.0
                                                                            constant:0.0];
    
    NSLayoutConstraint *lighthouseViewHeight = [NSLayoutConstraint constraintWithItem:light
                                                                            attribute:NSLayoutAttributeHeight
                                                                            relatedBy:NSLayoutRelationEqual
                                                                               toItem:self.mainImageView
                                                                            attribute:NSLayoutAttributeHeight
                                                                           multiplier:1.0
                                                                             constant:0.0];
    
    [self.mainImageView addConstraint:lighthouseViewWidth];
    [self.mainImageView addConstraint:lighthouseViewHeight];
    
    
    UIImage *lighthouseField = [UIImage imageNamed:@"Lighthouse-in-Field.jpeg"];
    UIImageView *secondImageView = [[UIImageView alloc] initWithImage:lighthouseField];
    secondImageView.userInteractionEnabled = YES;
    secondImageView.translatesAutoresizingMaskIntoConstraints = NO;
    self.lighthouseInField = secondImageView;
    
    [self.mainImageView addSubview:secondImageView];
    
    [self.mainImageView addConstraint:[NSLayoutConstraint constraintWithItem:secondImageView
                                                                     attribute:NSLayoutAttributeLeft
                                                                     relatedBy:NSLayoutRelationEqual
                                                                        toItem:light
                                                                     attribute:NSLayoutAttributeRight
                                                                    multiplier:1.0
                                                                      constant:0.0]];
    
    [self.mainImageView addConstraint:[NSLayoutConstraint constraintWithItem:secondImageView
                                                                     attribute:NSLayoutAttributeBottom
                                                                     relatedBy:NSLayoutRelationEqual
                                                                        toItem:self.mainImageView
                                                                     attribute:NSLayoutAttributeBottom
                                                                    multiplier:1.0
                                                                      constant:0.0]];
    
    [self.mainImageView addConstraint:[NSLayoutConstraint constraintWithItem:secondImageView
                                                                     attribute:NSLayoutAttributeTop
                                                                     relatedBy:NSLayoutRelationEqual
                                                                        toItem:self.mainImageView
                                                                     attribute:NSLayoutAttributeTop
                                                                    multiplier:1.0
                                                                      constant:0.0]];
    
    
    NSLayoutConstraint *lighthouseFieldViewWidth = [NSLayoutConstraint constraintWithItem:secondImageView
                                                                                attribute:NSLayoutAttributeWidth
                                                                                relatedBy:NSLayoutRelationEqual
                                                                                   toItem:self.mainImageView
                                                                                attribute:NSLayoutAttributeWidth
                                                                               multiplier:1.0
                                                                                 constant:0.0];
    
    NSLayoutConstraint *lighthouseFieldViewHeight = [NSLayoutConstraint constraintWithItem:secondImageView
                                                                                 attribute:NSLayoutAttributeHeight
                                                                                 relatedBy:NSLayoutRelationEqual
                                                                                    toItem:self.mainImageView
                                                                                 attribute:NSLayoutAttributeHeight
                                                                                multiplier:1.0
                                                                                  constant:0.0];
    
    [self.mainImageView addConstraint:lighthouseFieldViewWidth];
    [self.mainImageView addConstraint:lighthouseFieldViewHeight];
    
    
    
    UIImage *lighthouseNight = [UIImage imageNamed:@"Lighthouse-night.jpeg"];
    UIImageView *thirdImageView = [[UIImageView alloc] initWithImage:lighthouseNight];
    thirdImageView.userInteractionEnabled = YES;
    thirdImageView.translatesAutoresizingMaskIntoConstraints = NO;
    self.lighthouseAtNight = thirdImageView;
    
    [self.mainImageView addSubview:thirdImageView];
    
    [self.mainImageView addConstraint:[NSLayoutConstraint constraintWithItem:thirdImageView
                                                                     attribute:NSLayoutAttributeLeft
                                                                     relatedBy:NSLayoutRelationEqual
                                                                        toItem:secondImageView
                                                                     attribute:NSLayoutAttributeRight
                                                                    multiplier:1.0
                                                                      constant:0.0]];
    
    [self.mainImageView addConstraint:[NSLayoutConstraint constraintWithItem:thirdImageView
                                                                     attribute:NSLayoutAttributeRight
                                                                     relatedBy:NSLayoutRelationEqual
                                                                        toItem:self.mainImageView
                                                                     attribute:NSLayoutAttributeRight
                                                                    multiplier:1.0
                                                                      constant:0.0]];
    
    [self.mainImageView addConstraint:[NSLayoutConstraint constraintWithItem:thirdImageView
                                                                     attribute:NSLayoutAttributeBottom
                                                                     relatedBy:NSLayoutRelationEqual
                                                                        toItem:self.mainImageView
                                                                     attribute:NSLayoutAttributeBottom
                                                                    multiplier:1.0
                                                                      constant:0.0]];
    
    [self.mainImageView addConstraint:[NSLayoutConstraint constraintWithItem:thirdImageView
                                                                     attribute:NSLayoutAttributeTop
                                                                     relatedBy:NSLayoutRelationEqual
                                                                        toItem:self.mainImageView
                                                                     attribute:NSLayoutAttributeTop
                                                                    multiplier:1.0
                                                                      constant:0.0]];
    
    
    NSLayoutConstraint *lighthouseNightViewWidth = [NSLayoutConstraint constraintWithItem:thirdImageView
                                                                                attribute:NSLayoutAttributeWidth
                                                                                relatedBy:NSLayoutRelationEqual
                                                                                   toItem:self.mainImageView
                                                                                attribute:NSLayoutAttributeWidth
                                                                               multiplier:1.0
                                                                                 constant:0.0];
    
    NSLayoutConstraint *lighthouseNightViewHeight = [NSLayoutConstraint constraintWithItem:thirdImageView
                                                                                 attribute:NSLayoutAttributeHeight
                                                                                 relatedBy:NSLayoutRelationEqual
                                                                                    toItem:self.mainImageView
                                                                                 attribute:NSLayoutAttributeHeight
                                                                                multiplier:1.0
                                                                                  constant:0.0];
    
    [self.mainImageView addConstraint:lighthouseNightViewWidth];
    [self.mainImageView addConstraint:lighthouseNightViewHeight];
    
    
    UITapGestureRecognizer *lightouseTapped = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap:)];
    [self.mainImageView addGestureRecognizer:lightouseTapped];
    
}

-(void)handleTap:(UIGestureRecognizer *)gestureRecognizer {
    UIView *tappedView = [gestureRecognizer.view hitTest:[gestureRecognizer locationInView:gestureRecognizer.view]
                                               withEvent:nil];
    
    UIImageView *imageView = (UIImageView *)tappedView;
    UIImage *selectedImage = imageView.image;
    [self goToDetailView:selectedImage];
}

- (void)goToDetailView:(UIImage *)imageView {
    [self performSegueWithIdentifier:@"segueToDetail" sender:imageView];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"segueToDetail" ]) {
        DetailViewController *detailView = segue.destinationViewController;
        UIImage *image = (UIImage *)sender;
        
        //set the image property on detailViewController
        detailView.detailImage = image;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
