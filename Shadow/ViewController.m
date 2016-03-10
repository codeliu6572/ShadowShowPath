//
//  ViewController.m
//  Shadow
//
//  Created by 刘浩浩 on 16/1/25.
//  Copyright © 2016年 CodingFire. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *layerView2;

@property (weak, nonatomic) IBOutlet UIView *layerView1;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _layerView1.layer.shadowOpacity=0.5;
    _layerView2.layer.shadowOpacity=0.5;
    
    CGMutablePathRef squarePath=CGPathCreateMutable();
    CGPathAddRect(squarePath, NULL, _layerView1.bounds);
    _layerView1.layer.shadowPath=squarePath;
    CGPathRelease(squarePath);
    
    CGMutablePathRef circlePath=CGPathCreateMutable();
    CGPathAddEllipseInRect(circlePath, NULL, _layerView2.bounds);
    _layerView2.layer.shadowPath=circlePath;
    CGPathRelease(circlePath);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
