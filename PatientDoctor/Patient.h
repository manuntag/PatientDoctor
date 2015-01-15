//
//  Patient.h
//  PatientDoctor
//
//  Created by David Manuntag on 2015-01-15.
//  Copyright (c) 2015 David Manuntag. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Patient : NSObject

@property (nonatomic, strong) NSString * name;
@property (nonatomic, strong) NSString * age;
@property (nonatomic, strong) NSString * allergies;
@property (nonatomic, strong) NSString * symptoms;
@property (nonatomic) BOOL vaildHealthCard;

@property (nonatomic, strong) NSMutableArray * patientForm;
@property (nonatomic, strong) NSMutableArray * medrequest;
@property (nonatomic, strong) NSMutableArray * patientWallet;


- (instancetype)initWithName:(NSString*)name Age:(NSString *)age ValidHealthCard:(BOOL)vaildHealthcard Symptoms:(NSString*)symptoms Allergies:(NSString*)allergies;

-(NSArray *)fillOutForm;

-(NSArray *)medicationRequest;


@end
