//
//  HouseDetailSlide.m
//
//  Created by   on 16/6/13
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "HouseDetailSlide.h"


NSString *const kHouseDetailSlideSortNum = @"sortNum";
NSString *const kHouseDetailSlideAreaId = @"areaId";
NSString *const kHouseDetailSlideFileName = @"fileName";
NSString *const kHouseDetailSlideId = @"id";
NSString *const kHouseDetailSlideTitle = @"title";
NSString *const kHouseDetailSlideModifier = @"modifier";
NSString *const kHouseDetailSlidePath = @"path";
NSString *const kHouseDetailSlideCreator = @"creator";
NSString *const kHouseDetailSlideCreateTime = @"createTime";


@interface HouseDetailSlide ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation HouseDetailSlide

@synthesize sortNum = _sortNum;
@synthesize areaId = _areaId;
@synthesize fileName = _fileName;
@synthesize slideIdentifier = _slideIdentifier;
@synthesize title = _title;
@synthesize modifier = _modifier;
@synthesize path = _path;
@synthesize creator = _creator;
@synthesize createTime = _createTime;


+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict
{
    return [[self alloc] initWithDictionary:dict];
}

- (instancetype)initWithDictionary:(NSDictionary *)dict
{
    self = [super init];
    
    // This check serves to make sure that a non-NSDictionary object
    // passed into the model class doesn't break the parsing.
    if(self && [dict isKindOfClass:[NSDictionary class]]) {
            self.sortNum = [[self objectOrNilForKey:kHouseDetailSlideSortNum fromDictionary:dict] doubleValue];
            self.areaId = [[self objectOrNilForKey:kHouseDetailSlideAreaId fromDictionary:dict] doubleValue];
            self.fileName = [self objectOrNilForKey:kHouseDetailSlideFileName fromDictionary:dict];
            self.slideIdentifier = [[self objectOrNilForKey:kHouseDetailSlideId fromDictionary:dict] doubleValue];
            self.title = [self objectOrNilForKey:kHouseDetailSlideTitle fromDictionary:dict];
            self.modifier = [[self objectOrNilForKey:kHouseDetailSlideModifier fromDictionary:dict] doubleValue];
            self.path = [self objectOrNilForKey:kHouseDetailSlidePath fromDictionary:dict];
            self.creator = [[self objectOrNilForKey:kHouseDetailSlideCreator fromDictionary:dict] doubleValue];
            self.createTime = [self objectOrNilForKey:kHouseDetailSlideCreateTime fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[NSNumber numberWithDouble:self.sortNum] forKey:kHouseDetailSlideSortNum];
    [mutableDict setValue:[NSNumber numberWithDouble:self.areaId] forKey:kHouseDetailSlideAreaId];
    [mutableDict setValue:self.fileName forKey:kHouseDetailSlideFileName];
    [mutableDict setValue:[NSNumber numberWithDouble:self.slideIdentifier] forKey:kHouseDetailSlideId];
    [mutableDict setValue:self.title forKey:kHouseDetailSlideTitle];
    [mutableDict setValue:[NSNumber numberWithDouble:self.modifier] forKey:kHouseDetailSlideModifier];
    [mutableDict setValue:self.path forKey:kHouseDetailSlidePath];
    [mutableDict setValue:[NSNumber numberWithDouble:self.creator] forKey:kHouseDetailSlideCreator];
    [mutableDict setValue:self.createTime forKey:kHouseDetailSlideCreateTime];

    return [NSDictionary dictionaryWithDictionary:mutableDict];
}

- (NSString *)description 
{
    return [NSString stringWithFormat:@"%@", [self dictionaryRepresentation]];
}

#pragma mark - Helper Method
- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict
{
    id object = [dict objectForKey:aKey];
    return [object isEqual:[NSNull null]] ? nil : object;
}


#pragma mark - NSCoding Methods

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];

    self.sortNum = [aDecoder decodeDoubleForKey:kHouseDetailSlideSortNum];
    self.areaId = [aDecoder decodeDoubleForKey:kHouseDetailSlideAreaId];
    self.fileName = [aDecoder decodeObjectForKey:kHouseDetailSlideFileName];
    self.slideIdentifier = [aDecoder decodeDoubleForKey:kHouseDetailSlideId];
    self.title = [aDecoder decodeObjectForKey:kHouseDetailSlideTitle];
    self.modifier = [aDecoder decodeDoubleForKey:kHouseDetailSlideModifier];
    self.path = [aDecoder decodeObjectForKey:kHouseDetailSlidePath];
    self.creator = [aDecoder decodeDoubleForKey:kHouseDetailSlideCreator];
    self.createTime = [aDecoder decodeObjectForKey:kHouseDetailSlideCreateTime];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeDouble:_sortNum forKey:kHouseDetailSlideSortNum];
    [aCoder encodeDouble:_areaId forKey:kHouseDetailSlideAreaId];
    [aCoder encodeObject:_fileName forKey:kHouseDetailSlideFileName];
    [aCoder encodeDouble:_slideIdentifier forKey:kHouseDetailSlideId];
    [aCoder encodeObject:_title forKey:kHouseDetailSlideTitle];
    [aCoder encodeDouble:_modifier forKey:kHouseDetailSlideModifier];
    [aCoder encodeObject:_path forKey:kHouseDetailSlidePath];
    [aCoder encodeDouble:_creator forKey:kHouseDetailSlideCreator];
    [aCoder encodeObject:_createTime forKey:kHouseDetailSlideCreateTime];
}

- (id)copyWithZone:(NSZone *)zone
{
    HouseDetailSlide *copy = [[HouseDetailSlide alloc] init];
    
    if (copy) {

        copy.sortNum = self.sortNum;
        copy.areaId = self.areaId;
        copy.fileName = [self.fileName copyWithZone:zone];
        copy.slideIdentifier = self.slideIdentifier;
        copy.title = [self.title copyWithZone:zone];
        copy.modifier = self.modifier;
        copy.path = [self.path copyWithZone:zone];
        copy.creator = self.creator;
        copy.createTime = [self.createTime copyWithZone:zone];
    }
    
    return copy;
}


@end
