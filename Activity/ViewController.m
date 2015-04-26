//
//  ViewController.m
//  Activity
//
//  Created by Ferrakkem Bhuiyan on 27/04/2015.
//  Copyright (c) 2015 Ferrakkem Bhuiyan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://www.facebook.com" ]]];
    [webView addSubview:activityind];
    timer =[NSTimer scheduledTimerWithTimeInterval:(-20.0/2.0) target:self selector:@selector(loading) userInfo:nil repeats:YES];
}


-(void)loading{
    if(!webView.loading){
        [activityind stopAnimating];
    }else{
        [activityind startAnimating];
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
