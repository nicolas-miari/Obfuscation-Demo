//
//  AccessManager.m
//  ObfuscationDemo
//
//  Created by Nicolás Miari on 2017/09/22.
//  Copyright © 2017 Nicolás Miari. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AccessManager.h"


const int EVENT_ID = 12;

Class accessManagerClass() {
    return [AccessManager self];

}

SEL loginMethodName() {
    return @selector(loginWithUsername:);
}


@implementation AccessManager

- (void) loginWithUsername:(NSString*) userName {
    NSLog(@"%s", __func__);
    NSLog(userName);


    NSUTF8StringEncoding;
}

@end
