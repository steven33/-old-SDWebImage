//
//  ViewController.m
//  图片下载
//
//  Created by qugo on 16/8/9.
//  Copyright © 2016年 steven. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+WebCache.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
{
    NSArray *dataArr;
}

@property (nonatomic,strong)UITableView *tableView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    dataArr = @[@"http://img2.3lian.com/2014/f3/53/d/101.jpg",
                @"http://img2.3lian.com/2014/f3/53/d/102.jpg",
                @"http://img2.3lian.com/2014/f3/53/d/103.jpg",
                @"http://img2.3lian.com/2014/f3/53/d/104.jpg",
                @"http://img2.3lian.com/2014/f3/53/d/105.jpg",
                @"http://img2.3lian.com/2014/f3/53/d/106.jpg",
                @"http://img2.3lian.com/2014/f3/53/d/107.jpg",
                @"http://img2.3lian.com/2014/f3/53/d/108.jpg",
                @"http://img2.3lian.com/2014/f3/53/d/109.jpg",
                ];
    
    [self.view addSubview:self.tableView];
    
     NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return dataArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *dentify = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:dentify];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:dentify];
        
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 198)];
        imageView.tag = 12;
        [cell.contentView addSubview:imageView];
    }
    
    UIImageView *imageView = (UIImageView *)[cell.contentView viewWithTag:12];
    [imageView setImageWithURL:[NSURL URLWithString:dataArr[indexPath.row]]];
    return cell;
}

- (UITableView *)tableView
{
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.rowHeight = 200;
        
    }
    return _tableView;
}




@end
