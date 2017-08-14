//
//  ViewController.m
//  new8.2
//
//  Created by mac on 17/8/2.
//  Copyright © 2017年 mac. All rights reserved.
//

#import "ViewController.h"
#import <BaiduMapAPI_Base/BMKBaseComponent.h>//引入base相关所有的头文件

#import <BaiduMapAPI_Map/BMKMapComponent.h>//引入地图功能所有的头文件

#import <BaiduMapAPI_Search/BMKSearchComponent.h>//引入检索功能所有的头文件

#import <BaiduMapAPI_Cloud/BMKCloudSearchComponent.h>//引入云检索功能所有的头文件

#import <BaiduMapAPI_Location/BMKLocationComponent.h>//引入定位功能所有的头文件

#import <BaiduMapAPI_Utils/BMKUtilsComponent.h>//引入计算工具所有的头文件

#import <BaiduMapAPI_Radar/BMKRadarComponent.h>//引入周边雷达功能所有的头文件

#import <BaiduMapAPI_Map/BMKMapView.h>//只引入所需的单个头文件
@interface ViewController ()

@end

@implementation ViewController
{
    BMKMapView* mapView;
    CGFloat APPwidht;
    CGFloat APPheigh;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    mapView = [[BMKMapView alloc]initWithFrame:CGRectMake(0, 0, 320, 480)];
    self.view = mapView;
//    mapView.mapType = BMKMapTypeNone;//设置地图为空白类型
    
    
    //
    APPwidht = [UIScreen mainScreen].bounds.size.width;
    APPheigh = [UIScreen mainScreen].bounds.size.height;
    UIButton *weiXingBtn=[UIButton buttonWithType:UIButtonTypeCustom];
    weiXingBtn.frame = CGRectMake(20, 50, APPwidht/2-30, 35);
    weiXingBtn.backgroundColor = [UIColor blueColor];
    [weiXingBtn setTitle:@"卫星视图" forState:UIControlStateNormal];
    [weiXingBtn addTarget:self
                   action:@selector(changeWeiXngView) forControlEvents:UIControlEventTouchUpInside];
//    [weiXingBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [mapView addSubview:weiXingBtn];
    UIButton *nomalBtn = [[UIButton alloc]initWithFrame:CGRectMake(APPwidht/2+10, 50, APPwidht/2-30, 35)];
    nomalBtn.backgroundColor = [UIColor blueColor];
    [nomalBtn setTitle:@"普通视图" forState:UIControlStateNormal];
    [nomalBtn addTarget:self action:@selector(changeNormalView) forControlEvents:UIControlEventTouchUpInside];
    [mapView addSubview:nomalBtn];

}

- (void)changeWeiXngView{
    
    [mapView setMapType:BMKMapTypeSatellite];
}

- (void)changeNormalView{
    [mapView setMapType:BMKMapTypeStandard];// 标准地图
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
