//
//  MainViewController.m
//  En Route
//
//  Created by Sven Lombaert on 02/06/14.
//  Copyright (c) 2014 Sven Lombaert. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}

-(void)loadView
{
    CGRect frame = [[UIScreen mainScreen]bounds];
    MainView *mv = [[MainView alloc]initWithFrame:frame];
    [self setView:mv];
    mv.delegate = self;
    [self setTitle:@"Home"];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)enumerateFonts
{
    NSLog(@"--Start enumerating font--");
    for (NSString *fontFamilyStrings in [UIFont familyNames]) {
        NSLog(@"Font family: %@", fontFamilyStrings);
        for (NSString *fontStrings in [UIFont
                                       fontNamesForFamilyName:fontFamilyStrings]) {
            NSLog(@"-- Font: %@", fontStrings);
        }
    }
    NSLog(@"--End enumerating font--");
}

- (void)begeleiderButtonTapped
{
    //inladen volgende controller
    SleutelViewController *sleutelVC = [[SleutelViewController alloc]initWithNibName:nil bundle:nil];
    [self.navigationController pushViewController:sleutelVC animated:YES];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
