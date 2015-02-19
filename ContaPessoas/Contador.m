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
    [[NSNotificationCenter defaultCenter] postNotificationName:@"NumUpdate"
                                                        object:self
                                                      userInfo:@{@"boy":[NSNumber numberWithInt: boy], @"girl":[NSNumber numberWithInt:girl],@"total":[NSNumber numberWithInt: boy+girl]}];
}
- (void)maisUmaGata {
    girl++;
    [[NSNotificationCenter defaultCenter] postNotificationName:@"NumUpdate"
                                                        object:self
                                                      userInfo:@{@"boy":[NSNumber numberWithInt: boy], @"girl":[NSNumber numberWithInt:girl],@"total":[NSNumber numberWithInt: boy+girl]}];
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

