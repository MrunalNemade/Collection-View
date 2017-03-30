//
//  myCollectionViewController.h
//  CollectionView
//
//  Created by Mrunalini on 20/03/17.
//  Copyright © 2017 Mrunalini nemade. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "myCollectionViewCell.h"

@interface myCollectionViewController : UICollectionViewController<UICollectionViewDataSource,UICollectionViewDelegate>
{
    NSArray *flowerImages;
}
@property (strong, nonatomic) NSMutableArray *flowerImages;


@end
