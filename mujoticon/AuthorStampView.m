//
//  ViewController.m
//  mujoticon
//
//  Created by Kashima Takumi on 2013/10/12.
//  Copyright (c) 2013年 UNUUU FOUNDATION. All rights reserved.
//

#import "AuthorStampView.h"

#define kAuthorStampViewHeight 120
#define kStampViewSize 80
#define kAuthorStampViewPadding 20
#define kShowStampNum 3
#define kStampViewMargin 10

@implementation AuthorStampView

- (id)initWithAuthorId:(int)authorId
{
   self = [super init];
   if (self) {
        CGRect screen = [[UIScreen mainScreen] bounds];
        self.frame = CGRectMake(kAuthorStampViewPadding, 0, screen.size.width - kAuthorStampViewPadding, kAuthorStampViewHeight);
       
        for (int i = 0; i < kShowStampNum; i++) {
            [self addStampWithIndex:i];
        }
   }
   return self;
}

- (void)addStampWithIndex:(int)index
{
    float x = kAuthorStampViewPadding + (kStampViewSize + kStampViewMargin) * index;
    float y = (kAuthorStampViewHeight - kStampViewSize) / 2;
    CGRect iRect = CGRectMake(x, y, kStampViewSize, kStampViewSize);
    UIImageView* iView = [[UIImageView alloc] initWithFrame:iRect];
    iView.image = [UIImage imageNamed:@"author_icon.png"];
    [self addSubview:iView];
}

@end
