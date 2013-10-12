//
//  ViewController.m
//  mujoticon
//
//  Created by Kashima Takumi on 2013/10/12.
//  Copyright (c) 2013年 UNUUU FOUNDATION. All rights reserved.
//

#import "ViewController.h"
#import "CustomTableViewCell.h"

#define kCellNum 10

static NSString *CellIdentifier = @"Cell";

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.separatorColor = [UIColor whiteColor];
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell * cell;
    // セルを再利用する
    cell =  [_tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    /*
    if (!cell) {
        if (indexPath.row % 2 == 1) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                          reuseIdentifier:CellIdentifier];
            [cell.contentView setAlpha:0];
            [cell setUserInteractionEnabled:NO];
        } else {
    */
    if (!cell) {
        // セルを新規に作成する
        cell = [[CustomTableViewCell alloc] initWithAuhorId:0 identifier:CellIdentifier];
    }
    // }

    return cell;
}

// Cellの高さを返すと大きさが反映される
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [self tableView:self.tableView cellForRowAtIndexPath:indexPath];
    return cell.frame.size.height;
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return kCellNum * 2;
}

@end
