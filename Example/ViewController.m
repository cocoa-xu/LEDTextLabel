//
//  ViewController.m
//  Example
//
//  Created by Cocoa on 21/06/2021.
//

#import "ViewController.h"

@implementation ViewController

@synthesize textLabel1, textLabel2, textLabel3, textLabel4;

- (void)viewDidLoad {
    [super viewDidLoad];

    self.textLabel1.accentColor = [NSColor colorWithDeviceRed:255.0/255.0 green:150.0/255.0 blue:173.0/255.0 alpha:1.0];
    [NSTimer scheduledTimerWithTimeInterval:1 repeats:YES block:^(NSTimer * _Nonnull timer) {
        dispatch_async(dispatch_get_main_queue(), ^{
            NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
            [dateFormat setDateFormat:@"HH:mm:ss"];
            self.textLabel1.text = [dateFormat stringFromDate:[NSDate date]];
        });
    }];
    
    self.textLabel2.accentColor = [NSColor colorWithDeviceRed:134.0/255.0 green:122.0/255.0 blue:233.0/255.0 alpha:1.0];
    self.textLabel2.text = @"Hello World.";
    
    self.textLabel3.accentColor = [NSColor colorWithDeviceRed:129.0/255.0 green:178.0/255.0 blue:20.0/255.0 alpha:1.0];
    self.textLabel3.compact = YES;
    self.textLabel3.text = @"COMPACT.";
    
    self.textLabel4.offColor = [NSColor whiteColor];
    self.textLabel4.accentColor = [NSColor blackColor];
    self.textLabel4.text = @"OFF COLOR";
}

@end
