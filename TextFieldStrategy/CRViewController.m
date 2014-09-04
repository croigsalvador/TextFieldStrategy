//
//  CRViewController.m
//  TextFieldStrategy
//
//  Created by Javier Roig on 04/09/14.
//  Copyright (c) 2014 croigsalvador. All rights reserved.
//

#import "CRViewController.h"
#import "CRContextTextField.h"
#import "CRValidateAlpha.h"
#import "CRValidateEmojis.h"
#import "CRValidateNumbers.h"

@interface CRViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet CRContextTextField *alphaTextField;
@property (weak, nonatomic) IBOutlet CRContextTextField *numberTextField;
@property (weak, nonatomic) IBOutlet CRContextTextField *emojiTextField;

@end

@implementation CRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.alphaTextField.strategyValidation = [[CRValidateAlpha alloc] init];
    self.numberTextField.strategyValidation = [[CRValidateNumbers alloc] init];
    self.emojiTextField.strategyValidation = [[CRValidateEmojis alloc] init];
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    if ([textField isKindOfClass:[CRContextTextField class]]) {
        [(CRContextTextField *)textField validate];
    }
}

@end
