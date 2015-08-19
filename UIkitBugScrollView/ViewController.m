//
//  ViewController.m
//  UIkitBugScrollView
//
//  Created by pronebird on 8/19/15.
//  Copyright © 2015 pronebird. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    self.tableView.contentInset = UIEdgeInsetsMake(0, 0, 128, 0);
}

- (void)dealloc {
    NSLog(@"tableView.delegate = %@", self.tableView.delegate);
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    cell.textLabel.text = @"Scroll down and tap back.";
    
    return cell;
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    NSLog(@"scrollViewDidScroll");
}

@end
