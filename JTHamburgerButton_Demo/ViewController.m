//
//  ViewController.m
//  JTHamburgerButton_Demo
//
//  Created by admin on 16/6/13.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import "ViewController.h"
#import "JTHamburgerButton.h"



@interface ViewController ()
@property (weak, nonatomic) IBOutlet JTHamburgerButton *backButton;
@property (weak, nonatomic) IBOutlet JTHamburgerButton *closeButton;
@property (weak, nonatomic) IBOutlet JTHamburgerButton *crossToArrowowButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.crossToArrowowButton setCurrentMode:JTHamburgerButtonModeArrow];

}
//backBtn
- (IBAction)didBackBtnTouch:(JTHamburgerButton *)sender {
    if(sender.currentMode == JTHamburgerButtonModeHamburger){
        [sender setCurrentModeWithAnimation:JTHamburgerButtonModeArrow];
    }
    else{
        [sender setCurrentModeWithAnimation:JTHamburgerButtonModeHamburger];
    }

}
//closeBtn
- (IBAction)didCloseBtnTouch:(JTHamburgerButton *)sender {
    if(sender.currentMode == JTHamburgerButtonModeHamburger){
        [sender setCurrentModeWithAnimation:JTHamburgerButtonModeCross];
    }
    else{
        [sender setCurrentModeWithAnimation:JTHamburgerButtonModeHamburger];
    }

}

//didCrossToArrowBtnTouch
- (IBAction)didCrossToArrowBtnTouch:(JTHamburgerButton *)sender {
    if(sender.currentMode == JTHamburgerButtonModeArrow){
        [sender setCurrentModeWithAnimation:JTHamburgerButtonModeCross];
    }
    else{
        [sender setCurrentModeWithAnimation:JTHamburgerButtonModeArrow];
    }

}

@end
