//
//  ViewController.m
//  SampleParse
//
//  Created by Mubashir Meddekar on 21/03/15.
//  Copyright (c) 2015 Mubashir Meddekar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize registerNumber,nameTextField,genderSegment,genderTextField,cgpaSlider,cgpaTextField;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)genderSelected:(id)sender {
    if (genderSegment.selectedSegmentIndex == 0) {
        genderTextField.text = @"Male";
    }
    else if (genderSegment.selectedSegmentIndex == 1){
        genderTextField.text = @"Female";
    }
}

- (IBAction)sliderSelected:(id)sender {
    cgpaTextField.text = [NSString stringWithFormat:@"%f",cgpaSlider.value];
}

- (IBAction)savePressed:(id)sender {
   
    PFObject *myParseObject = [PFObject objectWithClassName:@"FirstParseClass"];
    
    myParseObject[@"studentRegisterNo"] = registerNumber.text;
    myParseObject[@"studentName"] = nameTextField.text;
    myParseObject[@"studentGender"] = genderTextField.text;
    myParseObject[@"studentCGPA"] = cgpaTextField.text;
    
    [myParseObject saveInBackground];
}

- (IBAction)retrieve:(id)sender {
    PFQuery *pfQuery = [PFQuery queryWithClassName:@"FirstParseClass"];
    [pfQuery getFirstObjectInBackgroundWithBlock:^(PFObject *pfObject,NSError *error){
        NSLog(@"%@",pfObject);
        
        NSLog(@"Reg No:%@",[pfObject valueForKey:@"studentRegisterNo"]);
        NSLog(@"Name:%@",[pfObject valueForKey:@"studentName"]);
        NSLog(@"Gender:%@",[pfObject valueForKey:@"studentGender"]);
        NSLog(@"CGPAL%@",[pfObject valueForKey:@"studentCGPA"]);

    }];
    
}
@end
