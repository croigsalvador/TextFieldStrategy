//
//  CRContextTextField.m
//  TextFieldStrategy
//
//  Created by Javier Roig on 04/09/14.
//  Copyright (c) 2014 croigsalvador. All rights reserved.
//

#import "CRContextTextField.h"

@implementation CRContextTextField

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
return self;
}

- (BOOL)validate {
    return [self.strategyValidation validate:self.text];
}

@end
