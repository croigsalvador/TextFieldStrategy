//
//  CRValidateTextField.h
//  TextFieldStrategy
//
//  Created by Javier Roig on 04/09/14.
//  Copyright (c) 2014 croigsalvador. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CRValidateTextField <NSObject>

- (BOOL)validate:(NSString *)text;

@end
