//
//  ViewController.m
//  19UIViewHW
//
//  Created by Eduard Galchenko on 9/20/18.
//  Copyright © 2018 Eduard Galchenko. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) UIView *superView;
@property (strong, nonatomic) NSMutableArray *allCheckers;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Black background for the chess board
    _superView = [[UIView alloc] initWithFrame:CGRectMake(0, 207, 414, 414)];
    _superView.backgroundColor = [UIColor blackColor];
    [self.view addSubview:_superView];
    _superView.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin |                      UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleTopMargin| UIViewAutoresizingFlexibleBottomMargin;
    
    NSInteger x = 0;
    NSInteger y = 0;
    NSInteger square1 = 52;
    NSInteger square2 = 52;
    
    for (int i = 0; i < 4; i++) {
        
        for (int j = 0; j < 4; j++) {
            
            UIView *view = [[UIView alloc] initWithFrame:CGRectMake(x, y, square1, square2)];
            view.backgroundColor = [UIColor lightGrayColor];
            [_superView addSubview:view];
            
            x += 104;
        }
        x = 0;
        y += 104;
    }
    
    NSInteger xx = 52;
    NSInteger yy = 52;
    
    for (int i = 0; i < 4; i++) {
        
    for (int j = 0; j < 4; j++) {
        
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(xx, yy, square1, square2)];
        view.backgroundColor = [UIColor lightGrayColor];
        [_superView addSubview:view];
        
        xx += 104;
    }
        xx = 52;
        yy += 104;
    }
    

    NSInteger xxx = 65;
    NSInteger yyy = 13;
    NSInteger checkers1 = 26;
    NSInteger checkers2 = 26;
    
    for (int i = 0; i < 2; i++) {
        
        for (int j = 0; j < 4; j++) {
            
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(xxx, yyy, checkers1, checkers2)];
        view.backgroundColor = [UIColor redColor];
        [_superView addSubview:view];
        [_allCheckers addObject:view];
            
            xxx += 104;
        }
        xxx = 13;
        yyy += 52;
    }
    
    NSInteger x4 = 65;
    
        for (int j = 0; j < 4; j++) {
            
            UIView *view = [[UIView alloc] initWithFrame:CGRectMake(x4, 117, checkers1, checkers2)];
            view.backgroundColor = [UIColor redColor];
            [_superView addSubview:view];
            [_allCheckers addObject:view];
            
            x4 += 104;
    }
    
    
    NSInteger x5 = 13;
    NSInteger y5 = 273;
    
    for (int i = 0; i < 2; i++) {
        
        for (int j = 0; j < 4; j++) {
            
            UIView *view = [[UIView alloc] initWithFrame:CGRectMake(x5, y5, checkers1, checkers2)];
            view.backgroundColor = [UIColor whiteColor];
            [_superView addSubview:view];
            [_allCheckers addObject:view];
            
            x5 += 104;
        }
        x5 = 65;
        y5 += 52;
    }
    
    NSInteger x6 = 13;
    
    for (int j = 0; j < 4; j++) {
        
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(x6, 377, checkers1, checkers2)];
        view.backgroundColor = [UIColor whiteColor];
        [_superView addSubview:view];
        [_allCheckers addObject:view];
        
        x6 += 104;
    }
    
    /*
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(13, 13, 26, 26)];
    view.backgroundColor = [UIColor redColor];
    [_superView addSubview:view];
    
    UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(65, 13, 26, 26)];
    view1.backgroundColor = [UIColor redColor];
    [_superView addSubview:view1];
     */
    
    /*
    NSInteger xxx = 65;
    NSInteger yyy = 13;
    NSInteger checkers1 = 26;
    NSInteger checkers2 = 26;
    
    
    for (int i = 0; i < 3; i++) {
        
        for (int j = 0; j < 4; j++) {
            
            
            UIView *view = [[UIView alloc] initWithFrame:CGRectMake(xxx, yyy, checkers1, checkers2)];
            view.backgroundColor = [UIColor redColor];
            [_superView addSubview:view];
            
            xxx += 104;
        }
        
        xxx = 13;
        yyy += 52;
    }
     */
    
     [self shuffleCheckers];
}

- (void) shuffleCheckers {
    
    for (UIView *checkers in _allCheckers) {
        NSInteger count = arc4random() % 2;
        if (count) {
            checkers.backgroundColor = [UIColor redColor];
        } else {
            checkers.backgroundColor = [UIColor whiteColor];
        }
    }
}

- (void) viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator {
    
    _superView.backgroundColor = [UIColor brownColor];
    
    [self shuffleCheckers];
    
}

- (UIInterfaceOrientationMask) supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskAll;
}


@end
