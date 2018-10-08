//
//  ViewController.m
//  Dizainier
//
//  Created by TA Trung Thanh on 24/09/2018.
//  Copyright © 2018 TA Trung Thanh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//objects
@property (readwrite, atomic, copy) Nombre *nombre;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.outletLabel.text = [NSString stringWithFormat:@"%d", (int)self.outletStepper.value];
    _nombre = [[Nombre alloc] init];
    //NSLog(@"stepper %d", (int)self.outletStepper.value);
    //NSLog(@"nombre %d high %d low %d", [_nombre myNombre_decimal], [_nombre myHigh], [_nombre myLow]);
}

- (IBAction)actionStepperValuechanged:(id)sender {
        [_nombre setNombre_decimal: (int)(self.outletStepper.value) ];
    self.outletSegUnites.selectedSegmentIndex = _nombre.myLow;
    self.outletSegDizaines.selectedSegmentIndex = _nombre.myHigh;
    self.outletSlider.value = _nombre.myNombre_decimal;
    if (_nombre.myNombre_decimal == 42)
        self.outletLabel.textColor = UIColor.redColor;
    else
        self.outletLabel.textColor = UIColor.blackColor;
    if (self.outletSwitch.isOn)
        self.outletLabel.text = _nombre.myNombre_hexadecimal;
    else
        self.outletLabel.text = _nombre.myNombre_decimal_str;
}

- (IBAction)actionSegDizaineschanged:(id)sender {
    [_nombre setNombre_decimal:  (int)(self.outletSegDizaines.selectedSegmentIndex*10 + _nombre.myLow)];
    self.outletStepper.value = _nombre.myNombre_decimal;
    [self actionStepperValuechanged:nil];
}

- (IBAction)actionSegUniteschanged:(id)sender {
    [_nombre setNombre_decimal: (int)(_nombre.myHigh*10 + self.outletSegUnites.selectedSegmentIndex)];
    self.outletStepper.value = _nombre.myNombre_decimal;
    [self actionStepperValuechanged:nil];
}

- (IBAction)actionSliderchanged:(id)sender {
    [_nombre setNombre_decimal: (int) self.outletSlider.value];
    self.outletStepper.value = _nombre.myNombre_decimal;
    [self actionStepperValuechanged:nil];
}

- (IBAction)actionSwitchchanged:(id)sender {
    [self actionStepperValuechanged:nil];
}

- (IBAction)actionButtonTouched:(id)sender {
    self.outletStepper.value = 0;
    [self actionStepperValuechanged:nil];
}

@end
