//
//  DetailedViewController.m
//  ScrollView-Image-Galleries
//
//  Created by Dave Augerinos on 2017-02-20.
//  Copyright © 2017 Dave Augerinos. All rights reserved.
//

#import "DetailedViewController.h"

@interface DetailedViewController ()

@property (weak, nonatomic) IBOutlet UIScrollView *detailedImageScrollView;
@property (strong, nonatomic) UIImageView *detailedImageView;

@end

@implementation DetailedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.detailedImageView = [[UIImageView alloc] initWithImage:self.myImage];
    self.detailedImageView.translatesAutoresizingMaskIntoConstraints = NO;
    self.detailedImageView.contentMode = UIViewContentModeScaleAspectFit;
    
    self.detailedImageScrollView.zoomScale = 1.0;
    self.detailedImageScrollView.minimumZoomScale = 0.5;
    self.detailedImageScrollView.maximumZoomScale = 2.0;
    
    [self.detailedImageScrollView addSubview:self.detailedImageView];

    [self applyConstraints];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//- (void)setMyImage:(UIImage *)myImage {
//    _myImage = myImage;
//    
//    dispatch_async(dispatch_get_main_queue(), ^{
//        self.detailedImageView.image = myImage;
//    });
//}

- (void)applyConstraints {
    
    NSLayoutConstraint *detailedImageViewTopConstraint = [NSLayoutConstraint constraintWithItem:self.detailedImageView
                                                                                      attribute:NSLayoutAttributeTop
                                                                                      relatedBy:NSLayoutRelationEqual
                                                                                         toItem:self.detailedImageScrollView
                                                                                      attribute:NSLayoutAttributeTop
                                                                                     multiplier:1.0
                                                                                       constant:0];
    detailedImageViewTopConstraint.active = YES;
    
    NSLayoutConstraint *detailedImageViewBottomConstraint = [NSLayoutConstraint constraintWithItem:self.detailedImageView
                                                                                         attribute:NSLayoutAttributeBottom
                                                                                         relatedBy:NSLayoutRelationEqual
                                                                                            toItem:self.detailedImageScrollView
                                                                                         attribute:NSLayoutAttributeBottom
                                                                                        multiplier:1.0
                                                                                          constant:0];
    detailedImageViewBottomConstraint.active = YES;
    
    NSLayoutConstraint *detailedImageViewLeftConstraint = [NSLayoutConstraint constraintWithItem:self.detailedImageView
                                                                                       attribute:NSLayoutAttributeLeft
                                                                                       relatedBy:NSLayoutRelationEqual
                                                                                          toItem:self.detailedImageScrollView
                                                                                       attribute:NSLayoutAttributeLeft
                                                                                      multiplier:1.0
                                                                                        constant:0];
    detailedImageViewLeftConstraint.active = YES;
    
    NSLayoutConstraint *detailedImageViewRightConstraint = [NSLayoutConstraint constraintWithItem:self.detailedImageView
                                                                                        attribute:NSLayoutAttributeRight
                                                                                        relatedBy:NSLayoutRelationEqual
                                                                                           toItem:self.detailedImageScrollView
                                                                                        attribute:NSLayoutAttributeRight
                                                                                       multiplier:1.0
                                                                                         constant:0];
    detailedImageViewRightConstraint.active = YES;
    
    NSLayoutConstraint *detailedImageViewWidthConstraint = [NSLayoutConstraint constraintWithItem:self.detailedImageView
                                                                                        attribute:NSLayoutAttributeWidth
                                                                                        relatedBy:NSLayoutRelationEqual
                                                                                           toItem:self.detailedImageScrollView
                                                                                        attribute:NSLayoutAttributeWidth
                                                                                       multiplier:1.0
                                                                                         constant:0];
    detailedImageViewWidthConstraint.active = YES;
    
    NSLayoutConstraint *detailedImageViewHeightConstraint = [NSLayoutConstraint constraintWithItem:self.detailedImageView
                                                                                        attribute:NSLayoutAttributeHeight
                                                                                        relatedBy:NSLayoutRelationEqual
                                                                                           toItem:self.detailedImageScrollView
                                                                                        attribute:NSLayoutAttributeHeight
                                                                                       multiplier:1.0
                                                                                         constant:0];
    detailedImageViewHeightConstraint.active = YES;
}


-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    
    return self.detailedImageView;
}


@end
