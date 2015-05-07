//
//  ViewController.m
//  VOSegmentedControlDemo
//
//  Created by Valo Lee on 14-11-19.
//  Copyright (c) 2014年 valo. All rights reserved.
//

#import "ViewController.h"
#import "VOSegmentedControl.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet VOSegmentedControl *segmentControl5;

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	VOSegmentedControl *segctrl1 = [[VOSegmentedControl alloc] initWithSegments:@[@{VOSegmentText: @"A"},
																				  @{VOSegmentText: @"B"},
																				  @{VOSegmentText: @"C"},
																				  @{VOSegmentText: @"D"},
																				  @{VOSegmentText: @"E"},
																				  @{VOSegmentText: @"F"},
																				  @{VOSegmentText: @"G"},
																				  @{VOSegmentText: @"H"},
																				  @{VOSegmentText: @"I"}]];
	segctrl1.contentStyle = VOContentStyleTextAlone;
	segctrl1.indicatorStyle = VOSegCtrlIndicatorStyleBottomLine;
	segctrl1.backgroundColor = [UIColor groupTableViewBackgroundColor];
    segctrl1.selectedBackgroundColor = segctrl1.backgroundColor;
	segctrl1.allowNoSelection = NO;
	segctrl1.frame = CGRectMake(10, 100, 300, 40);
	segctrl1.indicatorThickness = 4;
	segctrl1.tag = 1;
	[self.view addSubview:segctrl1];
	[segctrl1 setIndexChangeBlock:^(NSInteger index) {
		NSLog(@"1: block --> %@", @(index));
	}];
	[segctrl1 addTarget:self action:@selector(segmentCtrlValuechange:) forControlEvents:UIControlEventValueChanged];
	
	VOSegmentedControl *segctrl2 = [[VOSegmentedControl alloc]
                                    initWithSegments:@[@{VOSegmentImage: @"open", VOSegmentSelectedImage: @"close"},
                                                       @{VOSegmentImage: @"open", VOSegmentSelectedImage: @"close"},
                                                       @{VOSegmentImage: @"open", VOSegmentSelectedImage: @"close"},
                                                       @{VOSegmentImage: @"open", VOSegmentSelectedImage: @"close"},
                                                       @{VOSegmentImage: @"open", VOSegmentSelectedImage: @"close"},
                                                       @{VOSegmentImage: @"open", VOSegmentSelectedImage: @"close"},
                                                       @{VOSegmentImage: @"open", VOSegmentSelectedImage: @"close"},
                                                       @{VOSegmentImage: @"open", VOSegmentSelectedImage: @"close"},
                                                       @{VOSegmentImage: @"open", VOSegmentSelectedImage: @"close"}]];
	segctrl2.contentStyle = VOContentStyleImageAlone;
	segctrl2.indicatorStyle = VOSegCtrlIndicatorStyleTopLine;
	segctrl2.backgroundColor = [UIColor groupTableViewBackgroundColor];
    segctrl2.selectedBackgroundColor = segctrl2.backgroundColor;
	segctrl2.allowNoSelection = YES;
	segctrl2.frame = CGRectMake(10, 160, 300, 40);
	segctrl2.indicatorThickness = 4;
	segctrl2.indicatorCornerRadius = 2;
	segctrl2.tag = 2;
    segctrl2.selectedSegmentIndex = 7;
	[self.view addSubview:segctrl2];
	[segctrl2 setIndexChangeBlock:^(NSInteger index) {
		NSLog(@"2: block --> %@", @(index));
	}];
	[segctrl2 addTarget:self action:@selector(segmentCtrlValuechange:) forControlEvents:UIControlEventValueChanged];
	VOSegmentedControl *segctrl3 = [[VOSegmentedControl alloc]
                                    initWithSegments:@[@{VOSegmentText: @"A", VOSegmentImage: @"open", VOSegmentSelectedImage: @"close"},
                                                       @{VOSegmentText: @"B", VOSegmentImage: @"open", VOSegmentSelectedImage: @"close"},
                                                       @{VOSegmentText: @"C", VOSegmentImage: @"open", VOSegmentSelectedImage: @"close"},
                                                       @{VOSegmentText: @"D", VOSegmentImage: @"open", VOSegmentSelectedImage: @"close"},
                                                       @{VOSegmentText: @"E", VOSegmentImage: @"open", VOSegmentSelectedImage: @"close"},
                                                       @{VOSegmentText: @"F", VOSegmentImage: @"open", VOSegmentSelectedImage: @"close"},
                                                       @{VOSegmentText: @"G", VOSegmentImage: @"open", VOSegmentSelectedImage: @"close"},
                                                       @{VOSegmentText: @"H", VOSegmentImage: @"open", VOSegmentSelectedImage: @"close"},
                                                       @{VOSegmentText: @"I", VOSegmentImage: @"open", VOSegmentSelectedImage: @"close"}]];
	segctrl3.contentStyle = VOContentStyleImageRight;
	segctrl3.indicatorStyle = VOSegCtrlIndicatorStyleBox;
	segctrl3.backgroundColor = [UIColor groupTableViewBackgroundColor];
    segctrl3.selectedBackgroundColor = segctrl3.backgroundColor;
	segctrl3.allowNoSelection = NO;
	segctrl3.frame = CGRectMake(10, 220, 300, 40);
	segctrl3.indicatorThickness = 2;
	segctrl3.indicatorCornerRadius = 20;
	segctrl3.tag = 3;
	[self.view addSubview:segctrl3];
	[segctrl3 setIndexChangeBlock:^(NSInteger index) {
		NSLog(@"3: block --> %@", @(index));
	}];
	[segctrl3 addTarget:self action:@selector(segmentCtrlValuechange:) forControlEvents:UIControlEventValueChanged];
	
	VOSegmentedControl *segctrl4 = [[VOSegmentedControl alloc]
                                    initWithSegments:@[@{VOSegmentText: @"A", VOSegmentImage: @"open", VOSegmentSelectedImage: @"close"},
                                                       @{VOSegmentText: @"B", VOSegmentImage: @"open", VOSegmentSelectedImage: @"close"},
                                                       @{VOSegmentText: @"C", VOSegmentImage: @"open", VOSegmentSelectedImage: @"close"},
                                                       @{VOSegmentText: @"D", VOSegmentImage: @"open", VOSegmentSelectedImage: @"close"},
                                                       @{VOSegmentText: @"E", VOSegmentImage: @"open", VOSegmentSelectedImage: @"close"},
                                                       @{VOSegmentText: @"F", VOSegmentImage: @"open", VOSegmentSelectedImage: @"close"},
                                                       @{VOSegmentText: @"G", VOSegmentImage: @"open", VOSegmentSelectedImage: @"close"},
                                                       @{VOSegmentText: @"H", VOSegmentImage: @"open", VOSegmentSelectedImage: @"close"},
                                                       @{VOSegmentText: @"I", VOSegmentImage: @"open", VOSegmentSelectedImage: @"close"}]];
	segctrl4.contentStyle = VOContentStyleImageBottom;
	segctrl4.indicatorStyle = VOSegCtrlIndicatorStyleBox;
	segctrl4.animationType = VOSegCtrlAnimationTypeSmooth;
	segctrl4.backgroundColor = [UIColor groupTableViewBackgroundColor];
    segctrl4.selectedBackgroundColor = segctrl4.backgroundColor;
	segctrl4.allowNoSelection = NO;
	segctrl4.frame = CGRectMake(10, 280, 300, 60);
	segctrl4.indicatorCornerRadius = 30;
	segctrl4.tag = 4;
	[self.view addSubview:segctrl4];
	[segctrl4 setIndexChangeBlock:^(NSInteger index) {
		NSLog(@"4: block --> %@", @(index));
	}];
	[segctrl4 addTarget:self action:@selector(segmentCtrlValuechange:) forControlEvents:UIControlEventValueChanged];
    
    self.segmentControl5.segments = @[@{VOSegmentText: @"A", VOSegmentImage: @"open", VOSegmentSelectedImage: @"close"},
                                      @{VOSegmentText: @"B", VOSegmentImage: @"open", VOSegmentSelectedImage: @"close"},
                                      @{VOSegmentText: @"C", VOSegmentImage: @"open", VOSegmentSelectedImage: @"close"},
                                      @{VOSegmentText: @"D", VOSegmentImage: @"open", VOSegmentSelectedImage: @"close"},
                                      @{VOSegmentText: @"E", VOSegmentImage: @"open", VOSegmentSelectedImage: @"close"},
                                      @{VOSegmentText: @"F", VOSegmentImage: @"open", VOSegmentSelectedImage: @"close"},
                                      @{VOSegmentText: @"G", VOSegmentImage: @"open", VOSegmentSelectedImage: @"close"},
                                      @{VOSegmentText: @"H", VOSegmentImage: @"open", VOSegmentSelectedImage: @"close"},
                                      @{VOSegmentText: @"I", VOSegmentImage: @"open", VOSegmentSelectedImage: @"close"}];
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

- (IBAction)segmentCtrlValuechange: (VOSegmentedControl *)segmentCtrl{
	NSLog(@"%@: value --> %@",@(segmentCtrl.tag), @(segmentCtrl.selectedSegmentIndex));
}


@end
