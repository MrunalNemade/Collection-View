//
//  myCollectionViewController.m
//  CollectionView
//
//  Created by Mrunalini on 20/03/17.
//  Copyright © 2017 Mrunalini nemade. All rights reserved.
//

#import "myCollectionViewController.h"

@interface myCollectionViewController ()

@end

@implementation myCollectionViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    flowerImages = [@[@"image1.jpeg",@"image2.jpeg",@"image3.jpeg",@"image4.jpeg",@"image5.jpeg",@"image6.jpeg",@"image7.jpeg",@"image8.jpeg",@"image9.jpeg",@"image10.jpeg",@"image11.jpeg",@"image12.jpeg",@"image13.jpeg",@"image14.jpeg",@"image15.jpeg",@"image16.jpeg",@"image17.jpeg"]mutableCopy];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return flowerImages.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    myCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    
    UIImage *image;
    
    image = [UIImage imageNamed:flowerImages[indexPath.row]];
    
    cell.imageView.image = image;
    
    return cell;
}
//-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
//    myCollectionViewCell *myCell = [collectionView
//                                    dequeueReusableCellWithReuseIdentifier:@"cell"
//                                    forIndexPath:indexPath];
//    
//    UIImage *image;
//    long row = [indexPath row];
//    
//    image = [UIImage imageNamed:flowerImages[row]];
//    
//    myCell.imageView.image = image;
//    
//    return myCell;
//}
#pragma mark <UICollectionViewDelegate>

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    UIAlertController *controller = [UIAlertController alertControllerWithTitle: @"didSelectItemAtIndexPath:"
                                                                        message: [NSString stringWithFormat: @"Indexpath = %@", indexPath]
                                                                 preferredStyle: UIAlertControllerStyleAlert];
    
    UIAlertAction *alertAction = [UIAlertAction actionWithTitle: @"Dismiss"
                                                          style: UIAlertActionStyleDestructive
                                                        handler: nil];
    
    [controller addAction: alertAction];
    
    [self presentViewController: controller animated: YES completion: nil];
}


- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CGFloat picDimension = self.view.frame.size.width / 4.0f;
    return CGSizeMake(picDimension, picDimension);
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    CGFloat leftRightInset = self.view.frame.size.width / 14.0f;
    return UIEdgeInsetsMake(0, leftRightInset, 0, leftRightInset);
}
/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
