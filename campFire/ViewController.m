//
//  ViewController.m
//  campFire
//
//  Created by Apple on 12/25/15.
//  Copyright (c) 2015 AMOSC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController{
    UIImageView* fire;
    NSTimer* timer;

}
- (void) initproject{
    self.edgesForExtendedLayout = UIRectEdgeNone;
    // fire frame
    fire = [[UIImageView alloc]initWithFrame:self.view.bounds];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initproject];
    [self fireburnning];
   
}

- (void) fireburnning{
    // create image Array
    int i;
    NSMutableArray *image = [[NSMutableArray alloc] initWithCapacity:17];
    
    for (i=1;i<=17;i++){
        // image name
        NSString *name = [NSString stringWithFormat:@"campFire%d.gif",i];
        
        // add to image
        [image addObject:[UIImage imageNamed:name]];
    }
    
    // add to fire
    fire.animationImages = image;
    fire.animationDuration = 1;
    fire.animationRepeatCount = 0;

    
    [self.view addSubview:fire];
    [fire startAnimating];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
