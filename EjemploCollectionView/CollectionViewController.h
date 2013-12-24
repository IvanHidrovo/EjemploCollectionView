//
//  CollectionViewController.h
//  EjemploCollectionView
//
//  Created by Jenny Paillacho on 12/2/13.
//  Copyright (c) 2013 Alexis Maldonado. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Celda.h"

@interface CollectionViewController : UICollectionViewController<UICollectionViewDataSource,UICollectionViewDelegate>

@property (strong,nonatomic) NSArray *arrayTitulos;
@property (strong,nonatomic) NSArray *arrayImagenes;

@end
