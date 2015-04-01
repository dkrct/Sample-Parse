//
//  ViewController.h
//  SampleParse
//
//  Created by Mubashir Meddekar on 21/03/15.
//  Copyright (c) 2015 Mubashir Meddekar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *registerNumber;
@property (strong, nonatomic) IBOutlet UITextField *nameTextField;
@property (strong, nonatomic) IBOutlet UITextField *genderTextField;
@property (strong, nonatomic) IBOutlet UITextField *cgpaTextField;
@property (strong, nonatomic) IBOutlet UISegmentedControl *genderSegment;
@property (strong, nonatomic) IBOutlet UISlider *cgpaSlider;

- (IBAction)genderSelected:(id)sender;
- (IBAction)sliderSelected:(id)sender;
- (IBAction)savePressed:(id)sender;
- (IBAction)retrieve:(id)sender;


@end

