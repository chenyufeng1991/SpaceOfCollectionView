//
//  ViewController.m
//  ShowHiddenKeyboard
//
//  Created by chenyufeng on 16/6/4.
//  Copyright © 2016年 chenyufengweb. All rights reserved.
//

#import "MainViewController.h"
#import "Masonry.h"
#import "CustomCollectionViewCell.h"
#import "AppDelegate.h"

#define ARRAY_COUNT 10

@interface MainViewController ()<UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>

@property (nonatomic, strong) UICollectionView *collectionView;
@property (nonatomic, strong) NSMutableArray *collArr;

@end

@implementation MainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"主界面";

    [self configUI];
}

- (void)configUI
{
    // CollectionView
    self.collArr = [[NSMutableArray alloc] init];
    for (int i = 0; i < ARRAY_COUNT; i++)
    {
        [self.collArr addObject:[UIImage imageNamed:@"beauty"]];
    }

    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    [flowLayout setScrollDirection:UICollectionViewScrollDirectionVertical];// CollectionView的滚动方向，只能二选一

    // 初始化，设置宽高
    self.collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 100, SCREEN_WIDTH, CELL_WIDTH02 * 2) collectionViewLayout:flowLayout];
    [self.collectionView registerClass:[CustomCollectionViewCell class] forCellWithReuseIdentifier:@"CollectionCell"];
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
    [self.view addSubview:self.collectionView];
}

#pragma mark - UiCollectionViewDataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.collArr.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CustomCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CollectionCell" forIndexPath:indexPath]; // 重用cell
    if (cell == nil)
    {
        // 当重用cell为空时，创建新的cell
        cell = [[CustomCollectionViewCell alloc] init];
    }
    cell.imageView.image = self.collArr[indexPath.row];

    return cell;
}

#pragma mark - UICollectionViewDelegateFlowLayout

// 该方法是设置cell的size
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(CELL_WIDTH02, CELL_WIDTH02);
}

// 该方法是设置一个section的上左下右边距
- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    // 注意，这里默认会在top有+64的边距，因为状态栏+导航栏是64.
    // 因为我们常常把[[UIScreen mainScreen] bounds]作为CollectionView的区域，所以苹果API就默认给了+64的EdgeInsets，这里其实是一个坑，一定要注意。
    // 这里我暂时不用这个边距，所以top减去64
    return UIEdgeInsetsMake(-64, 0, 0, 0);
}

// 两个cell之间的最小间距，是由API自动计算的，只有当间距小于该值时，cell会进行换行
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section
{
    return 5;
}

// 两行之间的最小间距
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section
{
    return 5;
}

@end











