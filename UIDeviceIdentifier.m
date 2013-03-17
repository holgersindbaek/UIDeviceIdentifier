//
//  UIDeviceHardware.m
//
//  Created by Paul Williamson on 9/12/2012
//  https://github.com/squarefrog/UIDeviceIdentifier
//

#import "UIDeviceIdentifier.h"
#include <sys/types.h>
#include <sys/sysctl.h>

@implementation UIDeviceHardware

+ (NSString *) platform{
    size_t size;
    sysctlbyname("hw.machine", NULL, &size, NULL, 0);
    char *machine = malloc(size);
    sysctlbyname("hw.machine", machine, &size, NULL, 0);
    NSString *platform = [NSString stringWithUTF8String:machine];
    free(machine);
    return platform;
}

+ (NSString *) platformString{
    NSString *platform = [self platform];
    if ([platform isEqualToString:@"iPhone1,1"])    return @"iPhone";
    if ([platform isEqualToString:@"iPhone1,2"])    return @"iPhone";
    if ([platform isEqualToString:@"iPhone2,1"])    return @"iPhone";
    if ([platform isEqualToString:@"iPhone3,1"])    return @"iPhone";
    if ([platform isEqualToString:@"iPhone3,3"])    return @"iPhone";
    if ([platform isEqualToString:@"iPhone4,1"])    return @"iPhone";
    if ([platform isEqualToString:@"iPhone5,1"])    return @"iPhone";
    if ([platform isEqualToString:@"iPhone5,2"])    return @"iPhone";
    if ([platform isEqualToString:@"iPod1,1"])      return @"iPod";
    if ([platform isEqualToString:@"iPod2,1"])      return @"iPod";
    if ([platform isEqualToString:@"iPod3,1"])      return @"iPod";
    if ([platform isEqualToString:@"iPod4,1"])      return @"iPod";
    if ([platform isEqualToString:@"iPod5,1"])      return @"iPod";
    if ([platform isEqualToString:@"iPad1,1"])      return @"iPad";
    if ([platform isEqualToString:@"iPad2,1"])      return @"iPad";
    if ([platform isEqualToString:@"iPad2,2"])      return @"iPad";
    if ([platform isEqualToString:@"iPad2,3"])      return @"iPad";
    if ([platform isEqualToString:@"iPad2,5"])      return @"iPad";
    if ([platform isEqualToString:@"iPad2,6"])      return @"iPad";
    if ([platform isEqualToString:@"iPad2,7"])      return @"iPad";
    if ([platform isEqualToString:@"iPad3,1"])      return @"iPad";
    if ([platform isEqualToString:@"iPad3,2"])      return @"iPad";
    if ([platform isEqualToString:@"iPad3,3"])      return @"iPad";
    if ([platform isEqualToString:@"iPad3,4"])      return @"iPad";
    if ([platform isEqualToString:@"iPad3,5"])      return @"iPad";
    if ([platform isEqualToString:@"iPad3,6"])      return @"iPad";
    if ([platform isEqualToString:@"i386"])         return @"Simulator";
    if ([platform isEqualToString:@"x86_64"])       return @"Simulator";
    return platform;
}

@end