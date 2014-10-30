//
//  ViewController.m
//  OrderPlacer
//
//  Created by Jeremiah Bunton on 8/3/14.
//  Copyright (c) 2014 Jeremiah Bunton. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"


@interface ViewController ()

@end

@implementation ViewController

@synthesize username, password, users;


- (void) viewDidLoad
{
    [super viewDidLoad];
    
    users = @{@"jeremiah": @"username",
              @"password": @"password"};
    
    [self configureRestKit];
    
	// Do any additional setup after loading the view, typically from a nib.
    
    // Alocate memory for the dictionary, although later this will have to be a server call
}


- (void)configureRestKit
{
    // initialize AFNetworking HTTPClient
    NSURL *baseURL = [NSURL URLWithString:@"localhost"];
    AFHTTPClient *client = [[AFHTTPClient alloc] initWithBaseURL:baseURL];
    
    // initialize RestKit
    RKObjectManager *objectManager = [[RKObjectManager alloc] initWithHTTPClient:client];
    
    // setup object mappings
    RKObjectMapping *venueMapping = [RKObjectMapping mappingForClass:[Connection class]];
    [venueMapping addAttributeMappingsFromArray:@[@"name"]];
    
    // register mappings with the provider using a response descriptor
    RKResponseDescriptor *responseDescriptor =
    [RKResponseDescriptor responseDescriptorWithMapping:venueMapping
                                                 method:RKRequestMethodGET
                                            pathPattern:@"/v2/venues/search"
                                                keyPath:@"response.venues"
                                            statusCodes:[NSIndexSet indexSetWithIndex:200]];
    
    [objectManager addResponseDescriptor:responseDescriptor];
}

- (void) didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(IBAction)login: (id) sender

// Check to see if the user exists, if so then check to see if the password is correct
// Figure out how to access data inside the dictionary
{
    if ([users objectForKey:username.text] && [users objectForKey:password.text]) {
        [self performSegueWithIdentifier:@"loginSuccess" sender:self];
        username.text = nil;
        password.text = nil;
    }
    else {
        password.text = nil;
        UIAlertView *error = [[UIAlertView alloc] initWithTitle:@"Oooops" message:@"Incorrect username or password" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [error show];
        
        
    }
    
}




@end
