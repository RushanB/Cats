//
//  Photo.h
//  Cats
//
//  Created by Rushan on 2017-05-22.
//  Copyright © 2017 RushanBenazir. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Photo : NSObject

@property (nonatomic) NSString *photoServer;
@property (nonatomic) NSString *photoFarm;
@property (nonatomic) NSString *photoID;
@property (nonatomic) NSString *photoSecret;
//@property (nonatomic) NSString  *photoTitle;
//-(instancetype)initWithServer:(NSString *)server initWithFarm:(NSString *)farm initWithID:(NSString *)ID initWithSecret:(NSString *)secret initWithTitle:(NSString *)title andWith:(NSURL *)URL;

-(instancetype)initWithInfo:(NSDictionary *)info;

-(NSURL *)url;


@end
