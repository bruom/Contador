//
//  SecondViewController.m
//  ContaPessoas
//
//  Created by Vinicius Miana on 2/18/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController () {
      Contador *contador;
}

@end

@implementation SecondViewController

-(void)mostraDados{
    _totalBoys.text = [NSString stringWithFormat: @"%d", [contador getBoys]];
    _totalGirls.text = [NSString stringWithFormat: @"%d", [contador getGirls]];
    _total.text = [NSString stringWithFormat: @"%d", [contador getTotal]];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    contador = [Contador instancia];
    [self click:self];
    [contador setDelegate:self];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)click:(id)sender {
    _totalBoys.text = [NSString stringWithFormat: @"%d", [contador getBoys]];
    _totalGirls.text = [NSString stringWithFormat: @"%d", [contador getGirls]];
    _total.text = [NSString stringWithFormat:@"%d", [contador getGirls] + [contador getBoys] ];
}


@end
