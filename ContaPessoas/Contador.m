//
//  Contador.m
//  ContaPessoas
//
//  Created by Vinicius Miana on 2/18/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contador.h"


@implementation Contador {
    int boy;
    int girl;
}

@synthesize  delegate;

- (void) setDelegate:(id)newDelegate{
    delegate = newDelegate;
}

static Contador *_instancia;

-(id)init {
    self = [super init];
    if (self) {
        boy = 0;
        girl = 0;
        
    }
    return self;
}

+(Contador *)instancia{
    if(_instancia == nil)
        _instancia = [[Contador alloc]init];
    return _instancia;
}

- (void)maisUmCueca {
    boy = boy + 1;
    [delegate showBoys:boy];
    [[self delegate]showTotal:boy+girl];
}
- (void)maisUmaGata {
    girl++;
    [delegate showGirls:girl];
    [[self delegate]showTotal:boy+girl];
}

-(int)getBoys {
    return boy;
}

-(int)getGirls {
    return girl;
}

-(int)getTotal {
    return boy + girl;
}


@end

