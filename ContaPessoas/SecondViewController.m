//
//  SecondViewController.m
//  ContaPessoas
//
//  Created by Vinicius Miana on 2/18/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import "SecondViewController.h"
#import "Contador.h"

@interface SecondViewController () {
      Contador *contador;
}

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    contador = [Contador instancia];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(update:) name:@"NumUpdate" object:nil];
}

//atualização dos dados quando o contador é alterado
-(void)update:(NSNotification*)notification{
    _totalBoys.text = [NSString stringWithFormat: @"%d", [notification.userInfo[@"boy"] intValue]];
    _totalGirls.text = [NSString stringWithFormat: @"%d", [notification.userInfo[@"girl"] intValue]];
    _total.text = [NSString stringWithFormat: @"%d", [notification.userInfo[@"total"] intValue]];
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
