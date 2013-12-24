//
//  CollectionViewController.m
//  EjemploCollectionView
//
//  Created by Jenny Paillacho on 12/2/13.
//  Copyright (c) 2013 Alexis Maldonado. All rights reserved.
//

#import "CollectionViewController.h"


@interface CollectionViewController ()

@end

@implementation CollectionViewController
@synthesize arrayImagenes,arrayTitulos;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    arrayTitulos=[[NSArray alloc] initWithObjects:@"Acceso",@"Noticias",@"Avion", nil];
    arrayImagenes=[[NSArray alloc]initWithObjects:@"login.png",@"noti.png",@"avion.png", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return [arrayTitulos count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *CellIdentifier=@"Cell";
    Celda *cell=[collectionView dequeueReusableCellWithReuseIdentifier:CellIdentifier forIndexPath:indexPath];
    cell.lblCelda.text=[arrayTitulos objectAtIndex:indexPath.row];
    UIImage *imagen=[UIImage imageNamed:[arrayImagenes objectAtIndex:indexPath.row]];
    cell.imgView.image=imagen;

    
    return cell;

}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{

}

@end
