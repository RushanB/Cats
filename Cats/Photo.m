//
//  Photo.m
//  Cats
//
//  Created by Rushan on 2017-05-22.
//  Copyright © 2017 RushanBenazir. All rights reserved.
//

#import "Photo.h"

@implementation Photo
//
//-(instancetype)initWithServer:(NSString *)server initWithFarm:(NSString *)farm initWithID:(NSString *)ID initWithSecret:(NSString *)secret initWithTitle:(NSString *)title andWith:(NSURL *)URL{
//    self = [super init];
//    if (self) {
//        _photoServer = server;
//        _photoFarm = farm;
//        _photoID = ID;
//        _photoSecret = secret;
//        _photoTitle = title;
//        _photoURL = URL;
//        
//        NSString *photoURLString = [NSString stringWithFormat:@"http://farm%@.static.flickr.com/%@/%@_%@.jpg", self.photoFarm, self.photoServer, self.photoID, self.photoSecret];
//        
//        self.photoURL = [NSURL URLWithString:photoURLString];
//    }
//    return self;
//}

-(instancetype)initWithInfo:(NSDictionary *)info{
    if(self = [super init]){
        _photoServer = info[@"server"];
        _photoFarm = info[@"farm"];
        _photoSecret = info[@"secret"];
        _photoID = info[@"id"];
    }
    return self;
}

-(NSURL *)url{
    return [NSURL URLWithString:
            [NSString stringWithFormat:@"https://farm%@.staticflickr.com/%@/%@_%@.jpg",
             self.photoFarm, self.photoServer, self.photoID, self.photoSecret]];
}


@end
