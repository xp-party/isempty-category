//
//  Created by Vitaliy Ruzhnikov on 20.04.12.
//
//
//


#import "NSString+Additions.h"


@implementation NSString (Additions)

- (BOOL)isEmpty {
    return [self isEqualToString:@""];
}


+ (BOOL)isEmpty:(NSString *)string {
    if (string == nil) {
        return YES;
    }

    return [string isEmpty];
}

@end