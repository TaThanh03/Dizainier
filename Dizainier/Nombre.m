//
//  Nombre.m
//  Dizainier
//
//  Created by TA Trung Thanh on 24/09/2018.
//  Copyright © 2018 TA Trung Thanh. All rights reserved.
//

#import "Nombre.h"

@implementation Nombre

- (id) init {
    if (self = [super init]){ //always test
        [self setNombre_decimal:0];
    }
    return self;
}

- (int) myHigh {
    return self.nombre_decimal/10;
}

- (int) myLow {
    return self.nombre_decimal%10;
}

- (NSString*) myNombre_hexadecimal {
    int nombre = self.nombre_decimal;
    NSString *hexaDeciNum = [NSString string];
    hexaDeciNum = [NSString stringWithFormat:@"%x",nombre];
    return hexaDeciNum;
}

- (NSString*) myNombre_decimal_str {
    int nombre = self.nombre_decimal;
    NSString *nombre_decimal = [NSString string];
    nombre_decimal = [NSString stringWithFormat:@"%d",nombre];
    return nombre_decimal;
}

@end
