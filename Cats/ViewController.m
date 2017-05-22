//
//  ViewController.m
//  Cats
//
//  Created by Rushan on 2017-05-22.
//  Copyright © 2017 RushanBenazir. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UICollectionViewDelegate, UICollectionViewDataSource>
@property (weak, nonatomic) IBOutlet UICollectionView *catsCollectionView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
