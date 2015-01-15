//
//  main.m
//  PatientDoctor
//
//  Created by David Manuntag on 2015-01-15.
//  Copyright (c) 2015 David Manuntag. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Doctor.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        //Initialization of both patient and doctor using custom initializers
        
        Doctor * bob = [[Doctor alloc]initWithName:@"Bob Bobson" specialization:@"Surgeon"];
        
        Patient * jimmy = [[Patient alloc]initWithName:@"Jimmy Jimmerson" Age:@"35" ValidHealthCard:YES Symptoms:@"headache" Allergies:@"peanuts"];
        
        
        //Patient fills out form
        
        NSLog(@"\nHi, %@ can you please fill out your information on this form?", jimmy.name);
        
        [jimmy fillOutForm];
        
        
        //Check for vaild health card, if true add form information to the database, if false deny patient
        if (jimmy.vaildHealthCard) {
            
            NSLog(@"\nThank you for filling out the form, Ill add it to our database");
            
            [bob addPatientInformation:jimmy.patientForm];
        
        
        }else {
            
            NSLog(@"I'm sorry %@, but you don't have a vaild health card.\n We cannot treat you.", jimmy.name);
        }
        
        
        // patient sends med request that includes symptoms and allergies
        
        NSLog(@"Doctor, I have a terrible headache");
        
        [jimmy medicationRequest];
        
       
        // doctor checks request and suggests treatment, based on symptoms,
       // adds perscription to records and gives perscription for patient's wallet
        
        [bob checkMedRequest:jimmy.medrequest];
        
    
        
    }
    return 0;
}
