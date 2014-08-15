//
//  DemoMainTableViewController.m
//  NLScrollPagination
//
//  Created by noahlu on 14-8-11.
//  Copyright (c) 2014年 noahlu<codedancerhua@gmail.com>. All rights reserved.
//

#import "DemoMainTableViewController.h"
#import "DemoSubViewController.h"

@interface DemoMainTableViewController ()

@property(nonatomic, strong)NSMutableArray *dataListOne;
@end

@implementation DemoMainTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.dataListOne = [NSMutableArray array];
    for (int i = 0; i<10; i++) {
        [self.dataListOne addObject:[NSString stringWithFormat:@"Text PlaceHolder %d", i]];
    }
    
    self.subTableViewController = [[DemoSubViewController alloc] init];
}
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.dataListOne count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50.f;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellId = @"cellname";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
    
    cell.backgroundColor = [UIColor clearColor];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    UILabel *cellLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, cell.frame.size.width, 40)];
    cellLabel.backgroundColor = [UIColor colorWithRed:0.94 green:0.94 blue:0.94 alpha:1];
    cellLabel.text = [self.dataListOne objectAtIndex:indexPath.row];
    cellLabel.textAlignment = NSTextAlignmentCenter;
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeInfoDark];
//    [btn addTarget:self action:@selector(btnHandler) forControlEvents:UIControlEventTouchUpInside];
    
    [cell.contentView addSubview:cellLabel];
    [cell.contentView addSubview:btn];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"aa");
}

- (void)btnHandler
{
    NSLog(@"xx");
}

@end
