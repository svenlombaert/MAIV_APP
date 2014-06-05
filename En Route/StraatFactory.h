//
//  StraatFactory.h
//  En Route
//
//  Created by Sven Lombaert on 05/06/14.
//  Copyright (c) 2014 Sven Lombaert. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StraatData.h"

@interface StraatFactory : NSObject
+(StraatData *)createStraatWithDictionary:(NSDictionary *)dictionary;
@end
