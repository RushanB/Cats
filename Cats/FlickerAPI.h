//
//  FlickerAPI.h
//  Cats
//
//  Created by Rushan on 2017-05-22.
//  Copyright © 2017 RushanBenazir. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Photo.h"
#import "CatsCollectionViewCell.h"

@interface FlickerAPI : NSObject

+ (void)searchFor:(NSString*)query complete:(void(^)(NSArray* searchResults))complete;

+ (void)loadImage:(Photo*)photo complete:(void (^)(UIImage* image))complete;

@end
