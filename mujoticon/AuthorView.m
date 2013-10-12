//
//  ViewController.m
//  mujoticon
//
//  Created by Kashima Takumi on 2013/10/12.
//  Copyright (c) 2013年 UNUUU FOUNDATION. All rights reserved.
//

#import "AuthorView.h"

#define kAuthorViewHeight 60
#define kLabelLeftSpace 15
#define kImageViewSize 40
#define kBorderHeight 1
#define kAuthorViewPadding 20

@implementation AuthorView

- (id)initWithAuthorId:(int)authorId
{
   self = [super init];
   if (self) {
        CGRect screen = [[UIScreen mainScreen] bounds];
        self.frame = CGRectMake(kAuthorViewPadding, 0, screen.size.width - kAuthorViewPadding, kAuthorViewHeight);

//        CGRect tbRect = CGRectMake(0, 0, screen.size.width, kBorderHeight);
//        UIView* topBorderView = [[UIView alloc] initWithFrame:tbRect];
//        topBorderView.backgroundColor = [UIColor grayColor];
//        [self addSubview:topBorderView];
       
        CGRect iRect = CGRectMake(0, (kAuthorViewHeight - kImageViewSize) / 2,
                                  kImageViewSize, kImageViewSize);
        UIImageView* iView = [[UIImageView alloc] initWithFrame:iRect];
        iView.image = [UIImage imageNamed:@"author_icon.png"];
        [self addSubview:iView];
       
        CGRect lRect = CGRectMake(kImageViewSize + kLabelLeftSpace, 0, self.frame.size.width - kImageViewSize - kLabelLeftSpace, kAuthorViewHeight);
        UILabel* label = [[UILabel alloc] initWithFrame:lRect];
        label.text = @"Takumi KASHIMA";
        label.textColor = [UIColor darkGrayColor];
        [self addSubview:label];
       
//        CGRect bbRect = CGRectMake(0, kBorderHeight + kAuthorViewSize, screen.size.width, kBorderHeight);
//        UIView* bottomBorderView = [[UIView alloc] initWithFrame:bbRect];
//        bottomBorderView.backgroundColor = [UIColor grayColor];
//        [self addSubview:bottomBorderView];
       
        //self.backgroundColor = [UIColor colorWithRed:0.9 green:0.9 blue:0.9 alpha:1];
   }
   return self;
}

@end
