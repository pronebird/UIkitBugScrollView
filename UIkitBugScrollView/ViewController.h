//
//  ViewController.h
//  UIkitBugScrollView
//
//  Created by pronebird on 8/19/15.
//  Copyright © 2015 pronebird. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource, UITableViewDelegate, UIScrollViewDelegate>

@property (weak) IBOutlet UITableView *tableView;

@end
