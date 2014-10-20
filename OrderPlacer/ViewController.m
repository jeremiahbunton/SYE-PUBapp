//
//  ViewController.m
//  OrderPlacer
//
//  Created by Jeremiah Bunton on 8/3/14.
//  Copyright (c) 2014 Jeremiah Bunton. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController


- (void) viewDidLoad
{
    [super viewDidLoad];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissAlert)];
    [self.view addGestureRecognizer:tap];
    
//    [self configureRestKit];
    
	// Do any additional setup after loading the view, typically from a nib.
    
    // Alocate memory for the dictionary, although later this will have to be a server call
}


//- (void)configureRestKit
//{
//    // initialize AFNetworking HTTPClient
//    NSURL *baseURL = [NSURL URLWithString:@"localhost"];
//    AFHTTPClient *client = [[AFHTTPClient alloc] initWithBaseURL:baseURL];
//    
//    // initialize RestKit
//    RKObjectManager *objectManager = [[RKObjectManager alloc] initWithHTTPClient:client];
//    
//    // setup object mappings
//    RKObjectMapping *venueMapping = [RKObjectMapping mappingForClass:[Connection class]];
//    [venueMapping addAttributeMappingsFromArray:@[@"name"]];
//    
//    // register mappings with the provider using a response descriptor
//    RKResponseDescriptor *responseDescriptor =
//    [RKResponseDescriptor responseDescriptorWithMapping:venueMapping
//                                                 method:RKRequestMethodGET
//                                            pathPattern:@"/v2/venues/search"
//                                                keyPath:@"response.venues"
//                                            statusCodes:[NSIndexSet indexSetWithIndex:200]];
//    
//    [objectManager addResponseDescriptor:responseDescriptor];
//}

- (void) didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@synthesize username, password, sender, alert;

- (BOOL) login
{
    // Check to see if the user exists, if so then check to see if the password is correct
    // Figure out how to access data inside the dictionary
    
    
    
    if ([[username text] isEqual: (@"jeremiah")]) {
        if ([[username text] isEqual: (@"jeremiah")] && [[password text] isEqual:(@"password")]) {
            return YES;
        }
        else {
            return NO;
        }
    }
    else {
        return NO;
    }
}

-(IBAction)loginWorked: (id) sender
{
    if ([self login]) {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Login Alert" message:@"Login Success!!" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:nil, nil];
        [alertView show];
        
    }
    else {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Login Alert" message:@"Login Failed try again" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:nil, nil];
        [alertView show];
    }
    
}





@end
