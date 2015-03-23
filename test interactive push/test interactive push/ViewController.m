//
//  ViewController.m
//  test interactive push
//
//  Created by Trigodet on 14/01/2015.
//  Copyright (c) 2015 BeApp. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sendPush:(id)sender {
    UILocalNotification *localNotification = [[UILocalNotification alloc] init];
    
    localNotification.fireDate = [NSDate dateWithTimeInterval:[self.timer.text intValue] sinceDate:[NSDate date]];
    localNotification.alertBody = [NSString stringWithFormat:@"Alert Fired at %@", localNotification.fireDate];
    localNotification.soundName = UILocalNotificationDefaultSoundName;
    localNotification.applicationIconBadgeNumber = 1;
    localNotification.category = @"Email";

    [[UIApplication sharedApplication] scheduleLocalNotification:localNotification];
}
@end
