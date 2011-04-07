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

+ (NSImage *)imageForItemId:(uint16_t)itemId
{
    NSSize itemImageSize = NSMakeSize(32, 32);
    NSImage *output = [[NSImage alloc] initWithSize:itemImageSize];
//  BOOL notFound = FALSE;

    // Big clusterfuck cause I suck at maths.
    
    if (itemId == 1) {
        output = [NSImage imageNamed:@"block-1.png"];
    }
    else if (itemId == 2) {
        output = [NSImage imageNamed:@"block-2.png"];
    }
    else if (itemId == 3) {
        output = [NSImage imageNamed:@"block-3.png"];
    }
    else if (itemId == 4) {
        output = [NSImage imageNamed:@"block-4.png"];
    }
    else if (itemId == 5) {
        output = [NSImage imageNamed:@"block-5.png"];
    }
    else if (itemId == 6) {
        output = [NSImage imageNamed:@"block-6.png"];
    }
    else if (itemId == 7) {
        output = [NSImage imageNamed:@"block-7.png"];
    }
    else if (itemId == 8) {
        output = [NSImage imageNamed:@"block-8.png"];
    }
    else if (itemId == 9) {
        output = [NSImage imageNamed:@"block-9.png"];
    }
    else if (itemId == 10) {
        output = [NSImage imageNamed:@"block-10.png"];
    }
    else if (itemId == 11) {
        output = [NSImage imageNamed:@"block-11.png"];
    }
    else if (itemId == 12) {
        output = [NSImage imageNamed:@"block-12.png"];
    }
    else if (itemId == 13) {
        output = [NSImage imageNamed:@"block-13.png"];
    }
    else if (itemId == 14) {
        output = [NSImage imageNamed:@"block-14.png"];
    }
    else if (itemId == 15) {
        output = [NSImage imageNamed:@"block-15.png"];
    }
    else if (itemId == 16) {
        output = [NSImage imageNamed:@"block-16.png"];
    }
    else if (itemId == 17) {
        output = [NSImage imageNamed:@"block-17.png"];
    }
    else if (itemId == 18) {
        output = [NSImage imageNamed:@"block-18.png"];
    }
    else if (itemId == 19) {
        output = [NSImage imageNamed:@"block-19.png"];
    }
    else if (itemId == 20) {
        output = [NSImage imageNamed:@"block-20.png"];
    }
    else if (itemId == 21) {
        output = [NSImage imageNamed:@"block-21.png"];
    }
    else if (itemId == 22) {
        output = [NSImage imageNamed:@"block-22.png"];
    }
    else if (itemId == 23) {
        output = [NSImage imageNamed:@"block-23.png"];
    }
    else if (itemId == 24) {
        output = [NSImage imageNamed:@"block-24.png"];
    }
    else if (itemId == 25) {
        output = [NSImage imageNamed:@"block-25.png"];
    }
    else if (itemId == 26) {
        output = [NSImage imageNamed:@"block-26.png"];
    }
    else if (itemId == 27) {
        output = [NSImage imageNamed:@"block-27.png"];
    }
    else if (itemId == 28) {
        output = [NSImage imageNamed:@"block-28.png"];
    }
    else if (itemId == 29) {
        output = [NSImage imageNamed:@"block-29.png"];
    }
    else if (itemId == 30) {
        output = [NSImage imageNamed:@"block-30.png"];
    }
    else if (itemId == 31) {
        output = [NSImage imageNamed:@"block-31.png"];
    }
    else if (itemId == 32) {
        output = [NSImage imageNamed:@"block-32.png"];
    }
    else if (itemId == 33) {
        output = [NSImage imageNamed:@"block-33.png"];
    }
    else if (itemId == 34) {
        output = [NSImage imageNamed:@"block-34.png"];
    }
    else if (itemId == 35) {
        output = [NSImage imageNamed:@"block-35.png"];
    }
    else if (itemId == 36) {
        output = [NSImage imageNamed:@"block-36.png"];
    }
    else if (itemId == 37) {
        output = [NSImage imageNamed:@"block-37.png"];
    }
    else if (itemId == 38) {
        output = [NSImage imageNamed:@"block-38.png"];
    }
    else if (itemId == 39) {
        output = [NSImage imageNamed:@"block-39.png"];
    }
    else if (itemId == 40) {
        output = [NSImage imageNamed:@"block-40.png"];
    }
    else if (itemId == 41) {
        output = [NSImage imageNamed:@"block-41.png"];
    }
    else if (itemId == 42) {
        output = [NSImage imageNamed:@"block-42.png"];
    }
    else if (itemId == 43) {
        output = [NSImage imageNamed:@"block-43.png"];
    }
    else if (itemId == 44) {
        output = [NSImage imageNamed:@"block-44.png"];
    }
    else if (itemId == 45) {
        output = [NSImage imageNamed:@"block-45.png"];
    }
    else if (itemId == 46) {
        output = [NSImage imageNamed:@"block-46.png"];
    }
    else if (itemId == 47) {
        output = [NSImage imageNamed:@"block-47.png"];
    }
    else if (itemId == 48) {
        output = [NSImage imageNamed:@"block-48.png"];
    }
    else if (itemId == 49) {
        output = [NSImage imageNamed:@"block-49.png"];
    }
    else if (itemId == 50) {
        output = [NSImage imageNamed:@"block-50.png"];
    }
    else if (itemId == 51) {
        output = [NSImage imageNamed:@"block-51.png"];
    }
    else if (itemId == 52) {
        output = [NSImage imageNamed:@"block-52.png"];
    }
    else if (itemId == 53) {
        output = [NSImage imageNamed:@"block-53.png"];
    }
    else if (itemId == 54) {
        output = [NSImage imageNamed:@"block-54.png"];
    }
    else if (itemId == 55) {
        output = [NSImage imageNamed:@"block-55.png"];
    }
    else if (itemId == 56) {
        output = [NSImage imageNamed:@"block-56.png"];
    }
    else if (itemId == 57) {
        output = [NSImage imageNamed:@"block-57.png"];
    }
    else if (itemId == 58) {
        output = [NSImage imageNamed:@"block-58.png"];
    }
    else if (itemId == 59) {
        output = [NSImage imageNamed:@"block-59.png"];
    }
    else if (itemId == 60) {
        output = [NSImage imageNamed:@"block-60.png"];
    }
    else if (itemId == 61) {
        output = [NSImage imageNamed:@"block-61.png"];
    }
    else if (itemId == 62) {
        output = [NSImage imageNamed:@"block-62.png"];
    }
    else if (itemId == 63) {
        output = [NSImage imageNamed:@"block-63.png"];
    }
    else if (itemId == 64) {
        output = [NSImage imageNamed:@"block-64.png"];
    }
    else if (itemId == 65) {
        output = [NSImage imageNamed:@"block-65.png"];
    }
    else if (itemId == 66) {
        output = [NSImage imageNamed:@"block-66.png"];
    }
    else if (itemId == 67) {
        output = [NSImage imageNamed:@"block-67.png"];
    }
    else if (itemId == 68) {
        output = [NSImage imageNamed:@"block-68.png"];
    }
    else if (itemId == 69) {
        output = [NSImage imageNamed:@"block-69.png"];
    }
    else if (itemId == 70) {
        output = [NSImage imageNamed:@"block-70.png"];
    }
    else if (itemId == 71) {
        output = [NSImage imageNamed:@"block-71.png"];
    }
    else if (itemId == 72) {
        output = [NSImage imageNamed:@"block-72.png"];
    }
    else if (itemId == 73) {
        output = [NSImage imageNamed:@"block-73.png"];
    }
    else if (itemId == 74) {
        output = [NSImage imageNamed:@"block-74.png"];
    }
    else if (itemId == 75) {
        output = [NSImage imageNamed:@"block-75.png"];
    }
    else if (itemId == 76) {
        output = [NSImage imageNamed:@"block-76.png"];
    }
    else if (itemId == 77) {
        output = [NSImage imageNamed:@"block-77.png"];
    }
    else if (itemId == 78) {
        output = [NSImage imageNamed:@"block-78.png"];
    }
    else if (itemId == 79) {
        output = [NSImage imageNamed:@"block-79.png"];
    }
    else if (itemId == 80) {
        output = [NSImage imageNamed:@"block-80.png"];
    }
    else if (itemId == 81) {
        output = [NSImage imageNamed:@"block-81.png"];
    }
    else if (itemId == 82) {
        output = [NSImage imageNamed:@"block-82.png"];
    }
    else if (itemId == 83) {
        output = [NSImage imageNamed:@"block-83.png"];
    }
    else if (itemId == 84) {
        output = [NSImage imageNamed:@"block-84.png"];
    }
    else if (itemId == 85) {
        output = [NSImage imageNamed:@"block-85.png"];
    }
    else if (itemId == 86) {
        output = [NSImage imageNamed:@"block-86.png"];
    }
    else if (itemId == 87) {
        output = [NSImage imageNamed:@"block-87.png"];
    }
    else if (itemId == 88) {
        output = [NSImage imageNamed:@"block-88.png"];
    }
    else if (itemId == 89) {
        output = [NSImage imageNamed:@"block-89.png"];
    }
    else if (itemId == 90) {
        output = [NSImage imageNamed:@"block-90.png"];
    }
    else if (itemId == 91) {
        output = [NSImage imageNamed:@"block-91.png"];
    }
    else if (itemId == 92) {
        output = [NSImage imageNamed:@"block-92.png"];
    }
    else if (itemId == 93) {
        output = [NSImage imageNamed:@"block-93.png"];
    }
    else if (itemId == 94) {
        output = [NSImage imageNamed:@"block-94.png"];
    }
    else if (itemId == 95) {
        output = [NSImage imageNamed:@"block-95.png"];
    }
    else if (itemId == 256) {
        output = [NSImage imageNamed:@"block-256.png"];
    }
    else if (itemId == 257) {
        output = [NSImage imageNamed:@"block-257.png"];
    }
    else if (itemId == 258) {
        output = [NSImage imageNamed:@"block-258.png"];
    }
    else if (itemId == 259) {
        output = [NSImage imageNamed:@"block-259.png"];
    }
    else if (itemId == 260) {
        output = [NSImage imageNamed:@"block-260.png"];
    }
    else if (itemId == 261) {
        output = [NSImage imageNamed:@"block-261.png"];
    }
    else if (itemId == 262) {
        output = [NSImage imageNamed:@"block-262.png"];
    }
    else if (itemId == 263) {
        output = [NSImage imageNamed:@"block-263.png"];
    }
    else if (itemId == 264) {
        output = [NSImage imageNamed:@"block-264.png"];
    }
    else if (itemId == 265) {
        output = [NSImage imageNamed:@"block-265.png"];
    }
    else if (itemId == 266) {
        output = [NSImage imageNamed:@"block-266.png"];
    }
    else if (itemId == 267) {
        output = [NSImage imageNamed:@"block-267.png"];
    }
    else if (itemId == 268) {
        output = [NSImage imageNamed:@"block-268.png"];
    }
    else if (itemId == 269) {
        output = [NSImage imageNamed:@"block-269.png"];
    }
    else if (itemId == 270) {
        output = [NSImage imageNamed:@"block-270.png"];
    }
    else if (itemId == 271) {
        output = [NSImage imageNamed:@"block-271.png"];
    }
    else if (itemId == 272) {
        output = [NSImage imageNamed:@"block-272.png"];
    }
    else if (itemId == 273) {
        output = [NSImage imageNamed:@"block-273.png"];
    }
    else if (itemId == 274) {
        output = [NSImage imageNamed:@"block-274.png"];
    }
    else if (itemId == 275) {
        output = [NSImage imageNamed:@"block-275.png"];
    }
    else if (itemId == 276) {
        output = [NSImage imageNamed:@"block-276.png"];
    }
    else if (itemId == 277) {
        output = [NSImage imageNamed:@"block-277.png"];
    }
    else if (itemId == 278) {
        output = [NSImage imageNamed:@"block-278.png"];
    }
    else if (itemId == 279) {
        output = [NSImage imageNamed:@"block-279.png"];
    }
    else if (itemId == 280) {
        output = [NSImage imageNamed:@"block-280.png"];
    }
    else if (itemId == 281) {
        output = [NSImage imageNamed:@"block-281.png"];
    }
    else if (itemId == 282) {
        output = [NSImage imageNamed:@"block-282.png"];
    }
    else if (itemId == 283) {
        output = [NSImage imageNamed:@"block-283.png"];
    }
    else if (itemId == 284) {
        output = [NSImage imageNamed:@"block-284.png"];
    }
    else if (itemId == 285) {
        output = [NSImage imageNamed:@"block-285.png"];
    }
    else if (itemId == 286) {
        output = [NSImage imageNamed:@"block-286.png"];
    }
    else if (itemId == 287) {
        output = [NSImage imageNamed:@"block-287.png"];
    }
    else if (itemId == 288) {
        output = [NSImage imageNamed:@"block-288.png"];
    }
    else if (itemId == 289) {
        output = [NSImage imageNamed:@"block-289.png"];
    }
    else if (itemId == 290) {
        output = [NSImage imageNamed:@"block-290.png"];
    }
    else if (itemId == 291) {
        output = [NSImage imageNamed:@"block-291.png"];
    }
    else if (itemId == 292) {
        output = [NSImage imageNamed:@"block-292.png"];
    }
    else if (itemId == 293) {
        output = [NSImage imageNamed:@"block-293.png"];
    }
    else if (itemId == 294) {
        output = [NSImage imageNamed:@"block-294.png"];
    }
    else if (itemId == 295) {
        output = [NSImage imageNamed:@"block-295.png"];
    }
    else if (itemId == 296) {
        output = [NSImage imageNamed:@"block-296.png"];
    }
    else if (itemId == 297) {
        output = [NSImage imageNamed:@"block-297.png"];
    }
    else if (itemId == 298) {
        output = [NSImage imageNamed:@"block-298.png"];
    }
    else if (itemId == 299) {
        output = [NSImage imageNamed:@"block-299.png"];
    }
    else if (itemId == 300) {
        output = [NSImage imageNamed:@"block-300.png"];
    }
    else if (itemId == 301) {
        output = [NSImage imageNamed:@"block-301.png"];
    }
    else if (itemId == 302) {
        output = [NSImage imageNamed:@"block-302.png"];
    }
    else if (itemId == 303) {
        output = [NSImage imageNamed:@"block-303.png"];
    }
    else if (itemId == 304) {
        output = [NSImage imageNamed:@"block-304.png"];
    }
    else if (itemId == 305) {
        output = [NSImage imageNamed:@"block-305.png"];
    }
    else if (itemId == 306) {
        output = [NSImage imageNamed:@"block-306.png"];
    }
    else if (itemId == 307) {
        output = [NSImage imageNamed:@"block-307.png"];
    }
    else if (itemId == 308) {
        output = [NSImage imageNamed:@"block-308.png"];
    }
    else if (itemId == 309) {
        output = [NSImage imageNamed:@"block-309.png"];
    }
    else if (itemId == 310) {
        output = [NSImage imageNamed:@"block-310.png"];
    }
    else if (itemId == 311) {
        output = [NSImage imageNamed:@"block-311.png"];
    }
    else if (itemId == 312) {
        output = [NSImage imageNamed:@"block-312.png"];
    }
    else if (itemId == 313) {
        output = [NSImage imageNamed:@"block-313.png"];
    }
    else if (itemId == 314) {
        output = [NSImage imageNamed:@"block-314.png"];
    }
    else if (itemId == 315) {
        output = [NSImage imageNamed:@"block-315.png"];
    }
    else if (itemId == 316) {
        output = [NSImage imageNamed:@"block-316.png"];
    }
    else if (itemId == 317) {
        output = [NSImage imageNamed:@"block-317.png"];
    }
    else if (itemId == 318) {
        output = [NSImage imageNamed:@"block-318.png"];
    }
    else if (itemId == 319) {
        output = [NSImage imageNamed:@"block-319.png"];
    }
    else if (itemId == 320) {
        output = [NSImage imageNamed:@"block-320.png"];
    }
    else if (itemId == 321) {
        output = [NSImage imageNamed:@"block-321.png"];
    }
    else if (itemId == 322) {
        output = [NSImage imageNamed:@"block-322.png"];
    }
    else if (itemId == 323) {
        output = [NSImage imageNamed:@"block-323.png"];
    }
    else if (itemId == 324) {
        output = [NSImage imageNamed:@"block-324.png"];
    }
    else if (itemId == 325) {
        output = [NSImage imageNamed:@"block-325.png"];
    }
    else if (itemId == 326) {
        output = [NSImage imageNamed:@"block-326.png"];
    }
    else if (itemId == 327) {
        output = [NSImage imageNamed:@"block-327.png"];
    }
    else if (itemId == 328) {
        output = [NSImage imageNamed:@"block-328.png"];
    }
    else if (itemId == 329) {
        output = [NSImage imageNamed:@"block-329.png"];
    }
    else if (itemId == 330) {
        output = [NSImage imageNamed:@"block-330.png"];
    }
    else if (itemId == 331) {
        output = [NSImage imageNamed:@"block-331.png"];
    }
    else if (itemId == 332) {
        output = [NSImage imageNamed:@"block-332.png"];
    }
    else if (itemId == 333) {
        output = [NSImage imageNamed:@"block-333.png"];
    }
    else if (itemId == 334) {
        output = [NSImage imageNamed:@"block-334.png"];
    }
    else if (itemId == 335) {
        output = [NSImage imageNamed:@"block-335.png"];
    }
    else if (itemId == 336) {
        output = [NSImage imageNamed:@"block-336.png"];
    }
    else if (itemId == 337) {
        output = [NSImage imageNamed:@"block-337.png"];
    }
    else if (itemId == 338) {
        output = [NSImage imageNamed:@"block-338.png"];
    }
    else if (itemId == 339) {
        output = [NSImage imageNamed:@"block-339.png"];
    }
    else if (itemId == 340) {
        output = [NSImage imageNamed:@"block-340.png"];
    }
    else if (itemId == 341) {
        output = [NSImage imageNamed:@"block-341.png"];
    }
    else if (itemId == 342) {
        output = [NSImage imageNamed:@"block-342.png"];
    }
    else if (itemId == 343) {
        output = [NSImage imageNamed:@"block-343.png"];
    }
    else if (itemId == 344) {
        output = [NSImage imageNamed:@"block-344.png"];
    }
    else if (itemId == 345) {
        output = [NSImage imageNamed:@"block-345.png"];
    }
    else if (itemId == 346) {
        output = [NSImage imageNamed:@"block-346.png"];
    }
    else if (itemId == 347) {
        output = [NSImage imageNamed:@"block-347.png"];
    }
    else if (itemId == 348) {
        output = [NSImage imageNamed:@"block-348.png"];
    }
    else if (itemId == 349) {
        output = [NSImage imageNamed:@"block-349.png"];
    }
    else if (itemId == 350) {
        output = [NSImage imageNamed:@"block-350.png"];
    }
    else if (itemId == 351) {
        output = [NSImage imageNamed:@"block-351.png"];
    }
    else if (itemId == 352) {
        output = [NSImage imageNamed:@"block-352.png"];
    }
    else if (itemId == 353) {
        output = [NSImage imageNamed:@"block-353.png"];
    }
    else if (itemId == 354) {
        output = [NSImage imageNamed:@"block-354.png"];
    }
    else if (itemId == 355) {
        output = [NSImage imageNamed:@"block-355.png"];
    }
    else if (itemId == 356) {
        output = [NSImage imageNamed:@"block-356.png"];
    }
    else if (itemId == 357) {
        output = [NSImage imageNamed:@"block-357.png"];
    }
    else if (itemId == 2256) {
        output = [NSImage imageNamed:@"block-2256.png"];
    }
    else if (itemId == 2257) {
        output = [NSImage imageNamed:@"block-2257.png"];
    }/*
      else
      notFound = TRUE;
      
      if (notFound != TRUE) {
      output = [NSImage imageNamed:@"blockNotFound.png"];
      }
      */
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