//
//  ViewController.h
//  Dizainier
//
//  Created by TA Trung Thanh on 24/09/2018.
//  Copyright © 2018 TA Trung Thanh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Nombre.h"


@interface ViewController : UIViewController
//outlet
@property (readwrite, weak, atomic) IBOutlet UIStepper *outletStepper;
@property (weak, nonatomic) IBOutlet UISwitch *outletSwitch;
@property (readwrite, weak, atomic) IBOutlet UISegmentedControl *outletSegDizaines;
@property (readwrite, weak, atomic) IBOutlet UISegmentedControl *outletSegUnites;
@property (readwrite, weak, atomic) IBOutlet UISlider *outletSlider;
@property (weak, nonatomic) IBOutlet UIButton *outletButton;
@property (weak, nonatomic) IBOutlet UILabel *outletLabel;
//action
- (IBAction)actionStepperValuechanged:(id)sender;
- (IBAction)actionSegDizaineschanged:(id)sender;
- (IBAction)actionSegUniteschanged:(id)sender;
- (IBAction)actionSliderchanged:(id)sender;
- (IBAction)actionSwitchchanged:(id)sender;
- (IBAction)actionButtonTouched:(id)sender;

@end

