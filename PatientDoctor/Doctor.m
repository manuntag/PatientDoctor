//
//  Doctor.m
//  PatientDoctor
//
//  Created by David Manuntag on 2015-01-15.
//  Copyright (c) 2015 David Manuntag. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"

@implementation Doctor

- (instancetype)initWithName:(NSString*)name  specialization:(NSString *)specialization
{
    self = [super init];
    if (self) {
        
        _name = name;
        _specialization = specialization;
        
        
    }
    return self;
}


- (void)addPatientInformation:(NSArray *)patientForm {

    self.patientList = [NSMutableArray array];
    
    [self.patientList addObjectsFromArray:patientForm];
    
}


- (void)checkMedRequest:(NSArray*)patientMedRequest {
    
    Patient * patient = [[Patient alloc]init];
    
    self.perscriptionlist = [NSMutableArray array];
  
    if ([patientMedRequest containsObject:@"headache"]) {
        
        NSLog(@"here is a perscription for tylenol");
        
        // for records
        [self.perscriptionlist  addObject:@"perscription for tylenol"];
        
        // for patient
        
        [patient.patientWallet addObject:@"perscription for tylenol"];
        
    }else {
      
        NSLog(@"I perscibe surgery");
        
         //for records
        
        [self.perscriptionlist addObject:@"perscription for surgery"];
        
        
        // for patient
        [patient.patientWallet addObject:@"perscription for surgery"];
    
            
    }
    
}


@end
