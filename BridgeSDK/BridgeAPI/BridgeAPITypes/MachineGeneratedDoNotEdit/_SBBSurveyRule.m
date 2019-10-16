//
//  _SBBSurveyRule.m
//
//	Copyright (c) 2014-2019 Sage Bionetworks
//	All rights reserved.
//
//	Redistribution and use in source and binary forms, with or without
//	modification, are permitted provided that the following conditions are met:
//	    * Redistributions of source code must retain the above copyright
//	      notice, this list of conditions and the following disclaimer.
//	    * Redistributions in binary form must reproduce the above copyright
//	      notice, this list of conditions and the following disclaimer in the
//	      documentation and/or other materials provided with the distribution.
//	    * Neither the name of Sage Bionetworks nor the names of BridgeSDk's
//		  contributors may be used to endorse or promote products derived from
//		  this software without specific prior written permission.
//
//	THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
//	ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
//	WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
//	DISCLAIMED. IN NO EVENT SHALL SAGE BIONETWORKS BE LIABLE FOR ANY
//	DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
//	(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
//	LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
//	ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
//	(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
//	SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//
// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to SBBSurveyRule.m instead.
//

#import "_SBBSurveyRule.h"
#import "ModelObjectInternal.h"
#import "NSDate+SBBAdditions.h"

@interface _SBBSurveyRule()

@end

// see xcdoc://?url=developer.apple.com/library/etc/redirect/xcode/ios/602958/documentation/Cocoa/Conceptual/CoreData/Articles/cdAccessorMethods.html
@interface NSManagedObject (SurveyRule)

@property (nullable, nonatomic, retain) NSString* assignDataGroup;

@property (nullable, nonatomic, retain) NSSet<NSString *>* dataGroups;

@property (nullable, nonatomic, retain) NSNumber* displayIf;

@property (nullable, nonatomic, retain) NSNumber* displayUnless;

@property (nullable, nonatomic, retain) NSNumber* endSurvey;

@property (nullable, nonatomic, retain) NSString* operator;

@property (nullable, nonatomic, retain) NSString* skipTo;

@property (nullable, nonatomic, retain) id value;

@property (nullable, nonatomic, retain) NSManagedObject *surveyConstraints;

@property (nullable, nonatomic, retain) NSManagedObject *surveyElementAfterRules;

@property (nullable, nonatomic, retain) NSManagedObject *surveyElementBeforeRules;

@end

@implementation _SBBSurveyRule

- (instancetype)init
{
	if ((self = [super init]))
	{

	}

	return self;
}

#pragma mark Scalar values

- (BOOL)displayIfValue
{
	return [self.displayIf boolValue];
}

- (void)setDisplayIfValue:(BOOL)value_
{
	self.displayIf = [NSNumber numberWithBool:value_];
}

- (BOOL)displayUnlessValue
{
	return [self.displayUnless boolValue];
}

- (void)setDisplayUnlessValue:(BOOL)value_
{
	self.displayUnless = [NSNumber numberWithBool:value_];
}

- (BOOL)endSurveyValue
{
	return [self.endSurvey boolValue];
}

- (void)setEndSurveyValue:(BOOL)value_
{
	self.endSurvey = [NSNumber numberWithBool:value_];
}

#pragma mark Dictionary representation

- (void)updateWithDictionaryRepresentation:(NSDictionary *)dictionary objectManager:(id<SBBObjectManagerProtocol>)objectManager
{
    [super updateWithDictionaryRepresentation:dictionary objectManager:objectManager];

    self.assignDataGroup = [dictionary objectForKey:@"assignDataGroup"];

    self.dataGroups = [NSSet setWithArray:[dictionary objectForKey:@"dataGroups"]];

    self.displayIf = [dictionary objectForKey:@"displayIf"];

    self.displayUnless = [dictionary objectForKey:@"displayUnless"];

    self.endSurvey = [dictionary objectForKey:@"endSurvey"];

    self.operator = [dictionary objectForKey:@"operator"];

    self.skipTo = [dictionary objectForKey:@"skipTo"];

    self.value = [dictionary objectForKey:@"value"];

}

- (NSDictionary *)dictionaryRepresentationFromObjectManager:(id<SBBObjectManagerProtocol>)objectManager
{
    NSMutableDictionary *dict = [[super dictionaryRepresentationFromObjectManager:objectManager] mutableCopy];

    [dict setObjectIfNotNil:self.assignDataGroup forKey:@"assignDataGroup"];

    NSSortDescriptor *desc = [NSSortDescriptor sortDescriptorWithKey:@"" ascending:YES];
    [dict setObjectIfNotNil:[self.dataGroups sortedArrayUsingDescriptors:@[desc]] forKey:@"dataGroups"];

    [dict setObjectIfNotNil:self.displayIf forKey:@"displayIf"];

    [dict setObjectIfNotNil:self.displayUnless forKey:@"displayUnless"];

    [dict setObjectIfNotNil:self.endSurvey forKey:@"endSurvey"];

    [dict setObjectIfNotNil:self.operator forKey:@"operator"];

    [dict setObjectIfNotNil:self.skipTo forKey:@"skipTo"];

    [dict setObjectIfNotNil:self.value forKey:@"value"];

	return [dict copy];
}

- (void)awakeFromDictionaryRepresentationInit
{
	if (self.sourceDictionaryRepresentation == nil)
		return; // awakeFromDictionaryRepresentationInit has been already executed on this object.

	[super awakeFromDictionaryRepresentationInit];
}

#pragma mark Core Data cache

+ (NSString *)entityName
{
    return @"SurveyRule";
}

- (instancetype)initWithManagedObject:(NSManagedObject *)managedObject objectManager:(id<SBBObjectManagerProtocol>)objectManager cacheManager:(id<SBBCacheManagerProtocol>)cacheManager
{

    if (self = [super initWithManagedObject:managedObject objectManager:objectManager cacheManager:cacheManager]) {

        self.assignDataGroup = managedObject.assignDataGroup;

        self.dataGroups = managedObject.dataGroups;

        self.displayIf = managedObject.displayIf;

        self.displayUnless = managedObject.displayUnless;

        self.endSurvey = managedObject.endSurvey;

        self.operator = managedObject.operator;

        self.skipTo = managedObject.skipTo;

        self.value = managedObject.value;

    }

    return self;

}

- (NSManagedObject *)createInContext:(NSManagedObjectContext *)cacheContext withObjectManager:(id<SBBObjectManagerProtocol>)objectManager cacheManager:(id<SBBCacheManagerProtocol>)cacheManager
{
    NSManagedObject *managedObject = [NSEntityDescription insertNewObjectForEntityForName:@"SurveyRule" inManagedObjectContext:cacheContext];
    [self updateManagedObject:managedObject withObjectManager:objectManager cacheManager:cacheManager];

    // Calling code will handle saving these changes to cacheContext.

    return managedObject;
}

- (NSManagedObject *)saveToContext:(NSManagedObjectContext *)cacheContext withObjectManager:(id<SBBObjectManagerProtocol>)objectManager cacheManager:(id<SBBCacheManagerProtocol>)cacheManager
{
    NSManagedObject *managedObject = [cacheManager cachedObjectForBridgeObject:self inContext:cacheContext];
    if (managedObject) {
        [self updateManagedObject:managedObject withObjectManager:objectManager cacheManager:cacheManager];
    }

    // Calling code will handle saving these changes to cacheContext.

    return managedObject;
}

- (void)updateManagedObject:(NSManagedObject *)managedObject withObjectManager:(id<SBBObjectManagerProtocol>)objectManager cacheManager:(id<SBBCacheManagerProtocol>)cacheManager
{
    [super updateManagedObject:managedObject withObjectManager:objectManager cacheManager:cacheManager];

    managedObject.assignDataGroup = ((id)self.assignDataGroup == [NSNull null]) ? nil : self.assignDataGroup;

    managedObject.dataGroups = ((id)self.dataGroups == [NSNull null]) ? nil : self.dataGroups;

    managedObject.displayIf = ((id)self.displayIf == [NSNull null]) ? nil : self.displayIf;

    managedObject.displayUnless = ((id)self.displayUnless == [NSNull null]) ? nil : self.displayUnless;

    managedObject.endSurvey = ((id)self.endSurvey == [NSNull null]) ? nil : self.endSurvey;

    if (self.operator) managedObject.operator = self.operator;

    managedObject.skipTo = ((id)self.skipTo == [NSNull null]) ? nil : self.skipTo;

    managedObject.value = ((id)self.value == [NSNull null]) ? nil : self.value;

    // Calling code will handle saving these changes to cacheContext.
}

#pragma mark Direct access

@end
