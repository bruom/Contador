//
//  Contador.h
//  ContaPessoas
//
//  Created by Vinicius Miana on 2/18/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

@protocol MostradorDelegate
@required
-(void)mostraDados;

@end

@interface Contador : NSObject
{
}

@property (retain) id<MostradorDelegate> delegate;

- (void) setDelegate:(id)newDelegate;

+(Contador *)instancia;

- (void)maisUmCueca;
- (void)maisUmaGata;

-(int)getBoys;
-(int)getGirls;
-(int)getTotal;

@end

