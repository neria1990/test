//
//  ViewController.h
//  test interactive push
//
//  Created by Trigodet on 14/01/2015.
//  Copyright (c) 2015 BeApp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *timer;

- (IBAction)sendPush:(id)sender;

@end

