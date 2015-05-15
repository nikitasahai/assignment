//
//  nikViewController.m
//  TableViewDemo
//
//  Created by Vipul Goyal on 15/05/15.
//  Copyright (c) 2015 nikitasahai. All rights reserved.
//

#import "nikViewController.h"

@interface nikViewController ()
{
    NSArray *places;

}

@end

@implementation nikViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    places = [NSArray arrayWithObjects:@"HSR Layout", @"Koramangla", @"Indiranagar", @"AKR Tech Park(Lunch)", @"Sarjapur Road", @"Domlur(Lunch)", @"Bellandur", @"Embassy", nil];

}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [places count];

}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
   NSString *placeIdentifier = @"placeCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:placeIdentifier];
   
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:placeIdentifier];
    }
    
    cell.textLabel.text = [places objectAtIndex:indexPath.row];
    return cell;

}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
