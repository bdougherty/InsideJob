//
//  KIJAddItemView.m
//  InsideJob
//
//  Created by Kaikz on 10/05/11.
//  Copyright 2011 Kaikz. All rights reserved.
//

#import "KIJAddItemView.h"


@implementation KIJAddItemView

-(IBAction) selectItemImage {
    NSOpenPanel *imagePanel = [NSOpenPanel openPanel];
    [imagePanel setCanChooseFiles:YES];
    [imagePanel setCanChooseDirectories:NO];
    [imagePanel setAllowsMultipleSelection:NO];
    [imagePanel setResolvesAliases:YES];
    int result = [imagePanel runModal];
    
    if (result == NSOKButton){
        NSArray *selectedImageURLArray = [imagePanel URLs];
        NSString *imageURL = [selectedImageURLArray objectAtIndex:0];
    }

}

-(IBAction) addCustomItem {
    itemId = [itemIdField stringValue];
    name = [itemNameField stringValue];
    NSString *customItem = [NSString stringWithFormat:@"%@,%@",itemId,name];
    NSString *itemList = [[NSBundle mainBundle] pathForResource:@"Items" ofType:@"csv"];
    [customItem writeToFile:itemList atomically:NO encoding:NSUTF8StringEncoding error:nil];
}


- (void)awakeFromNib {
    [self makeKeyAndOrderFront:nil];
}


@end
