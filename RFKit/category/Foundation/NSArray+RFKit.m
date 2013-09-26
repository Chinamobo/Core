
#import "RFKit.h"
#import "NSArray+RFKit.h"

@implementation NSArray (RFKit)

- (id)firstObject {
    return (self!=nil && self.count>0) ? [self objectAtIndex:0] : nil;
}

@end

@implementation NSMutableArray (RFKit)

- (void)addObjectsFromDictionary:(NSDictionary *)sourceDictionary keys:(NSString *)firstKey, ... {
    va_list ap;
    va_start(ap, firstKey);
    for (NSString *key = firstKey; key != nil; key = va_arg(ap, id)) {
        id tmp = [sourceDictionary objectForKey:key];
        if (tmp) {
            [self addObject:tmp];
        }
    }
    va_end(ap);
}

- (NSMutableArray *)dividedBySize:(NSInteger)size {
    int category_count = [self count];
    int arr_count;
    int mod = category_count % size;
    int left;
    if (category_count >0) {
        if (mod == 0) {
            arr_count = category_count/size;
            left = size;
        }else{
            arr_count = category_count/size + 1;
            left = mod;
        }
        NSMutableArray *arraySet = [NSMutableArray arrayWithObjects:nil];
        for (int i = 0; i<arr_count; i++) {
            NSMutableArray *each = [NSMutableArray arrayWithObjects:nil];
            for (int j = i*size; j<(i+1==arr_count?(left+i*size):(i+1)*size); j++) {
                [each addObject:[self objectAtIndex:j]];
            }
            [arraySet addObject:each];
            
        }
        return arraySet;
    }
    return nil;
}

@end
