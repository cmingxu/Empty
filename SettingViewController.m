//
//  SettingViewController.m
//  Empty
//
//  Created by cming on 8/14/12.
//  Copyright (c) 2012 pinpoin.cn. All rights reserved.
//

#import "SettingViewController.h"
#import "AboutUsViewController.h"
#import "ContactViewController.h"

@interface SettingViewController ()

@end

@implementation SettingViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 4;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    NSString *rowTitle;
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
        switch ([indexPath row]) {
            case 0:
                rowTitle = @"关于我们";
                break;
            case 1:
                rowTitle = @"联系我们";
                break;
            case 2:
                rowTitle = @"清除缓存";
                break;
            case 3:
                rowTitle = @"给个好评";
                break;
            default:
                break;
        }
        cell.textLabel.text = rowTitle;
    }
    return cell;
}



#pragma mark - Table view delegate

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return @"设置";
}   


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UIViewController *controller;
    switch ([indexPath row]) {
        case 0:
            controller = [[AboutUsViewController alloc] initWithNibName:@"AboutUsViewController" bundle:nil];
            [self.navigationController pushViewController:controller animated:YES];
            break;
        case 1:
            controller = [[ContactViewController alloc] initWithNibName:@"ContactViewController" bundle:nil];
            [self.navigationController pushViewController:controller animated:YES];
            break;
        case 2:
            break;
        case 3:
            break;
        default:
            break;

    }    
}

@end
