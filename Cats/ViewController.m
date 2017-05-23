//
//  ViewController.m
//  Cats
//
//  Created by Rushan on 2017-05-22.
//  Copyright © 2017 RushanBenazir. All rights reserved.
//

#import "ViewController.h"
#import "Photo.h"
#import "CatsCollectionViewCell.h"
#import "FlickerAPI.h"


@interface ViewController () <UICollectionViewDelegate, UICollectionViewDataSource>

@property (weak, nonatomic) IBOutlet UICollectionView *catsCollectionView;
@property (nonatomic) NSArray *allPhotos;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
     self.allPhotos = [NSArray array];
    
    [FlickerAPI searchFor:@"dog" complete:^(NSArray *searchResults) {
        NSLog(@"found %@", searchResults);
        
        self.allPhotos = searchResults;
        
        [self.catsCollectionView reloadData];
    }];
    
}

//- (void)displayFirstImage{
//    // what we want
//    // self.someImageViewWehave.image = [FlickAPI loadImage:self.photoResults[0]];
//    //
//    [FlickerAPI loadImage:self.allPhotos[0]
//                complete:^(UIImage *image) {
//                    // [[NSOperationQueue mainQueue] addOperationWithBlock:^{
//                    //}];
//                }];
//}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return [self.allPhotos count];
    
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    CatsCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cats" forIndexPath:indexPath];
//    cell.catsImage.image = self.allPhotos[indexPath.row];
    Photo *photo = self.allPhotos[indexPath.row];
    NSData *imgData = [[NSData alloc]initWithContentsOfURL:photo.url];
    cell.catsImage.image = [UIImage imageWithData:imgData];
    
    return cell;
}


@end
