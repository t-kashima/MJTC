//
//  ViewController.h
//  mujoticon
//
//  Created by Kashima Takumi on 2013/10/12.
//  Copyright (c) 2013年 UNUUU FOUNDATION. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UITableView *tableView;
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath;
@end
