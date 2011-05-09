//
//  IJInventoryItem.m
//  InsideJob
//
//  Created by Adam Preble on 10/7/10.
//  Copyright 2010 Adam Preble. All rights reserved.
//

#import "IJInventoryItem.h"


@implementation IJInventoryItem

@synthesize itemId, slot, damage, count;

+ (id)emptyItemWithSlot:(uint8_t)slot
{
	IJInventoryItem *obj = [[[[self class] alloc] init] autorelease];
	obj.slot = slot;
	return obj;
}

- (id)initWithCoder:(NSCoder *)decoder
{
	if ((self = [super init]))
	{
		itemId = [decoder decodeIntForKey:@"itemId"];
		slot = [decoder decodeIntForKey:@"slot"];
		damage = [decoder decodeIntForKey:@"damage"];
		count = [decoder decodeIntForKey:@"count"];
	}
	return self;
}

- (void)encodeWithCoder:(NSCoder *)coder
{
	[coder encodeInt:itemId forKey:@"itemId"];
	[coder encodeInt:slot forKey:@"slot"];
	[coder encodeInt:damage forKey:@"damage"];
	[coder encodeInt:count forKey:@"count"];
}

- (NSString *)description
{
	return [NSString stringWithFormat:@"<%@ %p itemId=%d name=%@ count=%d slot=%d damage=%d",
			NSStringFromClass([self class]), self, itemId, self.itemName, count, slot, damage];
}

- (NSString *)itemName
{
	NSString *name = [[IJInventoryItem itemIdLookup] objectForKey:[NSNumber numberWithShort:self.itemId]];
	if (name)
		return name;
	else
		return [NSString stringWithFormat:@"%d", self.itemId];
}

#define kBlockNotFoundImageName @"blockNotFound.png"

+ (NSImage *)imageForItemId:(uint16_t)itemId {
    NSString *imagePath = [NSString stringWithFormat:@"block-%d.png", itemId];
    NSFileManager *fm = [NSFileManager defaultManager];
    NSImage *output;
    
    if (![fm fileExistsAtPath:imagePath]) {
        output = [NSImage imageNamed:imagePath];
    } else if (output == nil) {
        output = [NSImage imageNamed:kBlockNotFoundImageName];
    }
        return output;
}

- (NSImage *)image
{
	return [IJInventoryItem imageForItemId:itemId];
}

+ (NSDictionary *)itemIdLookup
{
	static NSDictionary *lookup = nil;
	if (!lookup)
	{
		NSError *error = nil;
		NSString *lines = [NSString stringWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Items" withExtension:@"csv"]
												   encoding:NSUTF8StringEncoding
													  error:&error];
		NSMutableDictionary *building = [NSMutableDictionary dictionary];
		[lines enumerateLinesUsingBlock:^(NSString *line, BOOL *stop) {
			if ([line hasPrefix:@"#"]) // ignore lines with a # prefix
				return;
			NSArray *components = [line componentsSeparatedByString:@","];
			NSNumber *itemId = [NSNumber numberWithShort:[[components objectAtIndex:0] intValue]];
			NSString *name = [components objectAtIndex:1];
			[building setObject:name forKey:itemId];
		}];
		lookup = [[NSDictionary alloc] initWithDictionary:building];
	}
	return lookup;
}

@end