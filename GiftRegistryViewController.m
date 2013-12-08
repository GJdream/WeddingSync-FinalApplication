//
//  GiftRegistryViewController.m
//  WeddingSync
//
//  Created by Marc A Myers on 12/2/13.
//  Copyright (c) 2013 RVC Student. All rights reserved.
//

#import "GiftRegistryViewController.h"

@interface GiftRegistryViewController ()

@end

@implementation GiftRegistryViewController

@synthesize giftWebView;
@synthesize giftURL;
NSMutableArray *URLS;
NSString *selectedURL;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    //Create an array containing the url values
    URLS = [[NSMutableArray alloc] init];
    
    //Add values
    [URLS addObject:@"Walmart"];
    [URLS addObject:@"Target"];
    [URLS addObject:@"Ikea"];
    [URLS addObject:@"Sears"];
    
    [self loadURL];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

//Number of components in the Picker View
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)thePickerView {
    return 1;
    
}

//Number of items(rows) in the Picker View
- (NSInteger)pickerView:(UIPickerView *)thePickerView
numberOfRowsInComponent:(NSInteger)component {
    return [URLS count];
    
}

//Populating the Picker View
- (NSString *)pickerView:(UIPickerView *)thePickerView
             titleForRow:(NSInteger)row
            forComponent:(NSInteger)component {
    return [URLS objectAtIndex:row];
    
}

//Item selected by the user
- (void)pickerView:(UIPickerView *)thePickerView
      didSelectRow:(NSInteger)row
       inComponent:(NSInteger)component {
    selectedURL = [URLS objectAtIndex:row];
    
    [self loadURL];
    
}

- (void)loadURL
{
    if ([selectedURL  isEqual: @"Target"]) {
        //Load a url into a web view
        NSURL *url = [NSURL URLWithString:@"http://www.target.com"];
        NSURLRequest *req = [NSURLRequest requestWithURL:url];
        [giftWebView loadRequest:req];
        
    } else if ([selectedURL  isEqual: @"Sears"]) {
        //Load a url into a web view
        NSURL *url = [NSURL URLWithString:@"http://www.sears.com"];
        NSURLRequest *req = [NSURLRequest requestWithURL:url];
        [giftWebView loadRequest:req];
        
    } else if ([selectedURL  isEqual: @"Ikea"]) {
        //Load a url into a web view
        NSURL *url = [NSURL URLWithString:@"http://www.ikea.com"];
        NSURLRequest *req = [NSURLRequest requestWithURL:url];
        [giftWebView loadRequest:req];
        
    } else {
        //Load a url into a web view
        NSURL *url = [NSURL URLWithString:@"http://www.walmart.com"];
        NSURLRequest *req = [NSURLRequest requestWithURL:url];
        [giftWebView loadRequest:req];
        
    }
    

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
