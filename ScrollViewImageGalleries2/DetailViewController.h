//
//  DetailViewController.h
//  ScrollViewImageGalleries2
//
//  Created by Benson Huynh on 2016-01-25.
//  Copyright © 2016 Benson Huynh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController <UIScrollViewDelegate>

@property (strong, nonatomic) UIImage *detailImage;
@property (strong, nonatomic) UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIScrollView *detailImageView;

@end
