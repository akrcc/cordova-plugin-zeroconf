#import "Hostname.h"
#import <unistd.h>

@implementation Hostname

+ (NSString*) get
{
    char hostname[256] = {0};
    gethostname(hostname, sizeof(hostname));
    return [NSString stringWithUTF8String:hostname] ?: @"";
}

@end
