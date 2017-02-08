//
//  ViewController.m
//  задание2_2
//
//  Created by стен on 02.02.17.
//  Copyright (c) 2017 стен. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (BOOL) validate:(NSString*) Login;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *login = @"Aa..";
    
     if([self validate:login])
    {
    
    if(login.length <=3 || login.length >= 32)
    {
        if(login.length <= 3 ) NSLog(@"маленькая длина логина");
        if(login.length >= 32) NSLog(@"Длина логина слишком большая");
    }
    else NSLog(@"Логин введен успешно");
    }
   
    else NSLog(@"Логин введен не коректно");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (BOOL) validate:(NSString*) Login {
    
    NSString *regExPattern = @"^[A-Za-z]+[A-Za-z0-9_.]$";
    NSRegularExpression *regEx = [[NSRegularExpression alloc]
                                  initWithPattern:regExPattern
                                  options:NSRegularExpressionCaseInsensitive
                                  error:nil];
    NSUInteger regExMatches = [regEx numberOfMatchesInString:Login
                                                     options:0
                                                       range:NSMakeRange(0, [Login length])];
    return (regExMatches == 0) ? NO : YES ;
    
}


@end
