//
//  Patient.m
//  PatientDoctor
//
//  Created by David Manuntag on 2015-01-15.
//  Copyright (c) 2015 David Manuntag. All rights reserved.
//

#import "Patient.h"

@implementation Patient

- (instancetype)initWithName:(NSString *)name Age:(NSString *)age ValidHealthCard:(BOOL)vaildHealthcard Symptoms:(NSString *)symptoms Allergies:(NSString *)allergies
{
    self = [super init];
    if (self) {
        
        _name = name;
        _age = age;
        _allergies = allergies;
        _vaildHealthCard = vaildHealthcard;
        _symptoms = symptoms;
        
    }
    return self;
}

-(NSArray*)fillOutForm {

    self.patientForm = [NSMutableArray array];
    
    [self.patientForm addObject:self.name];
    [self.patientForm addObject:self.age];
    [self.patientForm addObject:self.allergies];
    [self.patientForm addObject:self.symptoms];
    
    return self.patientForm;
    
}


-(NSArray*)medicationRequest {
    
    self.medrequest = [NSMutableArray array];
    
    [self.medrequest addObject:self.symptoms];
    [self.medrequest addObject:self.allergies];
    
    return self.medrequest;
    
}




@end
