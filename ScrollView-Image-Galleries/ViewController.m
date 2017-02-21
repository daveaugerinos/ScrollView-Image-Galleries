//
//  ViewController.m
//  ScrollView-Image-Galleries
//
//  Created by Dave Augerinos on 2017-02-20.
//  Copyright © 2017 Dave Augerinos. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

//@property (strong, nonatomic, readonly) NSArray<UIImageView *> *imageViewsArray;

@property (strong, nonatomic) UIImageView *imageView1;
@property (strong, nonatomic) UIImageView *imageView2;
@property (strong, nonatomic) UIImageView *imageView3;
@property (weak, nonatomic) IBOutlet UIScrollView *imageGalleryScrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.imageView1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Lighthouse"]];
    self.imageView1.translatesAutoresizingMaskIntoConstraints = NO;
    self.imageView1.contentMode = UIViewContentModeScaleAspectFit;
    
    self.imageView2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Lighthouse-in-Field"]];
    self.imageView2.translatesAutoresizingMaskIntoConstraints = NO;
    self.imageView2.contentMode = UIViewContentModeScaleAspectFit;
    
    self.imageView3 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Lighthouse-night"]];
    self.imageView3.translatesAutoresizingMaskIntoConstraints = NO;
    self.imageView3.contentMode = UIViewContentModeScaleAspectFit;
    
    [self.imageGalleryScrollView addSubview:self.imageView1];
    [self.imageGalleryScrollView addSubview:self.imageView2];
    [self.imageGalleryScrollView addSubview:self.imageView3];
    
    [self applyContraints];
    
    self.imageGalleryScrollView.pagingEnabled = YES;
}

- (void)applyContraints {
    
    // Image view 1 constraints
    NSLayoutConstraint *imageView1TopConstraint = [NSLayoutConstraint constraintWithItem:self.imageView1
                                                                               attribute:NSLayoutAttributeTop
                                                                               relatedBy:NSLayoutRelationEqual
                                                                                  toItem:self.imageGalleryScrollView
                                                                               attribute:NSLayoutAttributeTop
                                                                              multiplier:1.0
                                                                                constant:0];
    imageView1TopConstraint.active = YES;
    
    NSLayoutConstraint *imageView1BottomConstraint = [NSLayoutConstraint constraintWithItem:self.imageView1
                                                                                  attribute:NSLayoutAttributeBottom
                                                                                  relatedBy:NSLayoutRelationEqual
                                                                                     toItem:self.imageGalleryScrollView
                                                                                  attribute:NSLayoutAttributeBottom
                                                                                 multiplier:1.0
                                                                                   constant:0];
    imageView1BottomConstraint.active = YES;
    
    NSLayoutConstraint *imageView1LeftConstraint = [NSLayoutConstraint constraintWithItem:self.imageView1
                                                                                attribute:NSLayoutAttributeLeft
                                                                                relatedBy:NSLayoutRelationEqual
                                                                                   toItem:self.imageGalleryScrollView
                                                                                attribute:NSLayoutAttributeLeft
                                                                               multiplier:1.0
                                                                                 constant:0];
    imageView1LeftConstraint.active = YES;
    
    NSLayoutConstraint *imageView1RightConstraint = [NSLayoutConstraint constraintWithItem:self.imageView1
                                                                                 attribute:NSLayoutAttributeRight
                                                                                 relatedBy:NSLayoutRelationEqual
                                                                                    toItem:self.imageView2
                                                                                 attribute:NSLayoutAttributeLeft
                                                                                multiplier:1.0
                                                                                  constant:0];
    imageView1RightConstraint.active = YES;

    NSLayoutConstraint *imageView1WidthConstraint = [NSLayoutConstraint constraintWithItem:self.imageView1
                                                                                attribute:NSLayoutAttributeWidth
                                                                                relatedBy:NSLayoutRelationEqual
                                                                                   toItem:self.imageGalleryScrollView
                                                                                attribute:NSLayoutAttributeWidth
                                                                               multiplier:1.0
                                                                                 constant:0];
    imageView1WidthConstraint.active = YES;
    
    NSLayoutConstraint *imageView1HeightConstraint = [NSLayoutConstraint constraintWithItem:self.imageView1
                                                                                 attribute:NSLayoutAttributeHeight
                                                                                 relatedBy:NSLayoutRelationEqual
                                                                                    toItem:self.imageGalleryScrollView
                                                                                 attribute:NSLayoutAttributeHeight
                                                                                multiplier:1.0
                                                                                  constant:0];
    imageView1HeightConstraint.active = YES;
    
    // Image view 2 constraints
    NSLayoutConstraint *imageView2TopConstraint = [NSLayoutConstraint constraintWithItem:self.imageView2
                                                                               attribute:NSLayoutAttributeTop
                                                                               relatedBy:NSLayoutRelationEqual
                                                                                  toItem:self.imageGalleryScrollView
                                                                               attribute:NSLayoutAttributeTop
                                                                              multiplier:1.0
                                                                                constant:0];
    imageView2TopConstraint.active = YES;
    
    NSLayoutConstraint *imageView2BottomConstraint = [NSLayoutConstraint constraintWithItem:self.imageView2
                                                                                  attribute:NSLayoutAttributeBottom
                                                                                  relatedBy:NSLayoutRelationEqual
                                                                                     toItem:self.imageGalleryScrollView
                                                                                  attribute:NSLayoutAttributeBottom
                                                                                 multiplier:1.0
                                                                                   constant:0];
    imageView2BottomConstraint.active = YES;
    
    NSLayoutConstraint *imageView2RightConstraint = [NSLayoutConstraint constraintWithItem:self.imageView2
                                                                                 attribute:NSLayoutAttributeRight
                                                                                 relatedBy:NSLayoutRelationEqual
                                                                                    toItem:self.imageView3
                                                                                 attribute:NSLayoutAttributeLeft
                                                                                multiplier:1.0
                                                                                  constant:0];
    imageView2RightConstraint.active = YES;
    
    NSLayoutConstraint *imageView2WidthConstraint = [NSLayoutConstraint constraintWithItem:self.imageView2
                                                                                 attribute:NSLayoutAttributeWidth
                                                                                 relatedBy:NSLayoutRelationEqual
                                                                                    toItem:self.imageGalleryScrollView
                                                                                 attribute:NSLayoutAttributeWidth
                                                                                multiplier:1.0
                                                                                  constant:0];
    imageView2WidthConstraint.active = YES;
    
    NSLayoutConstraint *imageView2HeightConstraint = [NSLayoutConstraint constraintWithItem:self.imageView2
                                                                                  attribute:NSLayoutAttributeHeight
                                                                                  relatedBy:NSLayoutRelationEqual
                                                                                     toItem:self.imageGalleryScrollView
                                                                                  attribute:NSLayoutAttributeHeight
                                                                                 multiplier:1.0
                                                                                   constant:0];
    imageView2HeightConstraint.active = YES;
    
    
    // Image view 3 constraints
    NSLayoutConstraint *imageView3TopConstraint = [NSLayoutConstraint constraintWithItem:self.imageView3
                                                                               attribute:NSLayoutAttributeTop
                                                                               relatedBy:NSLayoutRelationEqual
                                                                                  toItem:self.imageGalleryScrollView
                                                                               attribute:NSLayoutAttributeTop
                                                                              multiplier:1.0
                                                                                constant:0];
    imageView3TopConstraint.active = YES;
    
    NSLayoutConstraint *imageView3BottomConstraint = [NSLayoutConstraint constraintWithItem:self.imageView3
                                                                                  attribute:NSLayoutAttributeBottom
                                                                                  relatedBy:NSLayoutRelationEqual
                                                                                     toItem:self.imageGalleryScrollView
                                                                                  attribute:NSLayoutAttributeBottom
                                                                                 multiplier:1.0
                                                                                   constant:0];
    imageView3BottomConstraint.active = YES;
    
    NSLayoutConstraint *imageView3RightConstraint = [NSLayoutConstraint constraintWithItem:self.imageView3
                                                                                 attribute:NSLayoutAttributeRight
                                                                                 relatedBy:NSLayoutRelationEqual
                                                                                    toItem:self.imageGalleryScrollView
                                                                                 attribute:NSLayoutAttributeRight
                                                                                multiplier:1.0
                                                                                  constant:0];
    imageView3RightConstraint.active = YES;
    
    NSLayoutConstraint *imageView3WidthConstraint = [NSLayoutConstraint constraintWithItem:self.imageView3
                                                                                 attribute:NSLayoutAttributeWidth
                                                                                 relatedBy:NSLayoutRelationEqual
                                                                                    toItem:self.imageGalleryScrollView
                                                                                 attribute:NSLayoutAttributeWidth
                                                                                multiplier:1.0
                                                                                  constant:0];
    imageView3WidthConstraint.active = YES;
    
    NSLayoutConstraint *imageView3HeightConstraint = [NSLayoutConstraint constraintWithItem:self.imageView3
                                                                                  attribute:NSLayoutAttributeHeight
                                                                                  relatedBy:NSLayoutRelationEqual
                                                                                     toItem:self.imageGalleryScrollView
                                                                                  attribute:NSLayoutAttributeHeight
                                                                                 multiplier:1.0
                                                                                   constant:0];
    imageView3HeightConstraint.active = YES;
}

//- (NSArray<UIImage *> *)imageViewsArray {
//    return @[
//             [UIImage imageNamed:@"Lighthouse-in-Field"],
//             [UIImage imageNamed:@"Lighthouse-night"],
//             [UIImage imageNamed:@"Lighthouse"]
//             ];
//}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
