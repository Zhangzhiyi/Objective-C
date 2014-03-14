//
//  Photo.h
//  oc_HelloWorld
//
//  Created by ET on 11-7-21.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
///Users/etet/Desktop/code/oc_HelloWorld/Photo.h

#import <Foundation/Foundation.h>

static const NSString *kCamera = @"Nikon";
#define CAMERA_MODEL @"Nikon"
#define CAMERA_MODEL2 "Nikon"

@interface Photo : NSObject {
    NSString* caption;
    NSString* photographer;
}
- (NSString*)Caption;
- (NSString*)Photographer;
- (void)setCaption: (NSString*)input;
- (void)setPhotographer: (NSString*)input;

+ (NSString*)classname;
@end
