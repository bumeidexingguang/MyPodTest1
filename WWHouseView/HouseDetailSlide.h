//
//  HouseDetailSlide.h
//
//  Created by   on 16/6/13
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface HouseDetailSlide : NSObject <NSCoding, NSCopying>

@property (nonatomic, assign) double sortNum;
@property (nonatomic, assign) double areaId;
@property (nonatomic, strong) NSString *fileName;
@property (nonatomic, assign) double slideIdentifier;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, assign) double modifier;
@property (nonatomic, strong) NSString *path;
@property (nonatomic, assign) double creator;
@property (nonatomic, strong) NSString *createTime;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
