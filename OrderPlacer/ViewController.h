//
//  ViewController.h
//  OrderPlacer
//
//  Created by Jeremiah Bunton on 8/3/14.
//  Copyright (c) 2014 Jeremiah Bunton. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <RestKit/RestKit.h>
#import "Connection.h"


@interface ViewController : UIViewController {
    
}

@property IBOutlet UITextField * username;
@property IBOutlet UITextField * password;
@property UIButton * sender;
@property NSDictionary *users;

//-(void) configureRestKit;


-(IBAction)login:(id)sender;

//-(void) connectToDB;
@property (weak, nonatomic) IBOutlet UIButton *loginButton;


@end
