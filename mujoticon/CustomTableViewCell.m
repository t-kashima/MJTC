//
//  ViewController.m
//  mujoticon
//
//  Created by Kashima Takumi on 2013/10/12.
//  Copyright (c) 2013年 UNUUU FOUNDATION. All rights reserved.
//

#import "CustomTableViewCell.h"
#import "AuthorView.h"
#import "AuthorStampView.h"

#define kCellSize 180

@implementation CustomTableViewCell

- (id)initWithAuhorId:(int)authorId identifier:(NSString *)identifier
{
   self = [super initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
   if (self) {
        // デフォルトのラベルを削除する
        // [self.textLabel removeFromSuperview];
        // self.textLabel.text = text;
        
        CGRect sRect = [[UIScreen mainScreen] bounds];
        self.frame = CGRectMake(0, 0, sRect.size.width, kCellSize);
        
        AuthorView* av = [[AuthorView alloc] initWithAuthorId:authorId];
        [self addSubview:av];
       
        AuthorStampView* asv = [[AuthorStampView alloc] initWithAuthorId:authorId];
        CGPoint avPoint = av.frame.origin;
        CGSize avSize = av.frame.size;
        CGSize asvSize = asv.frame.size;
        CGRect asvRect = CGRectMake(0, avPoint.y + avSize.height, asvSize.width, asvSize.height);
        asv.frame = asvRect;
        [self addSubview:asv];
       
        self.selectionStyle = UITableViewCellSelectionStyleNone;
       
   }
   return self;
}

@end
