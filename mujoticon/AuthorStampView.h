//
//  ViewController.h
//  mujoticon
//
//  Created by Kashima Takumi on 2013/10/12.
//  Copyright (c) 2013年 UNUUU FOUNDATION. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AuthorStampView : UIView
- (id)initWithAuthorId:(int)authorId;
- (void)addStampWithIndex:(int)index;
@end
