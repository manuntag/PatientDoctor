//
//  Doctor.h
//  PatientDoctor
//
//  Created by David Manuntag on 2015-01-15.
//  Copyright (c) 2015 David Manuntag. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

@interface Doctor : NSObject

@property (nonatomic, strong) NSString * name;
@property (nonatomic, strong) NSString * specialization;
@property (nonatomic, strong) NSMutableArray * patientList;
@property (nonatomic, strong) NSMutableArray * perscriptionlist;

- (instancetype)initWithName:(NSString*)name  specialization:(NSString *)specialization;

- (void)addPatientInformation:(NSArray *)patientForm;

- (void)checkMedRequest:(NSArray *)patientMedRequest;


@end
