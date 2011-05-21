//
//  KIJAddItemView.h
//  InsideJob
//
//  Created by Kaikz on 10/05/11.
//  Copyright 2011 Kaikz. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface KIJAddItemView : NSWindow {
    IBOutlet NSButton *addCustomItemButton;
    IBOutlet NSButton *selectImage;
    IBOutlet NSTextField *itemIdField;
    IBOutlet NSTextField *itemNameField;
    IBOutlet NSImageView *imagePreview;
    NSString *itemId;
    NSString *name;
}

@property (nonatomic,retain) NSButton *addCustomItem;
@property (nonatomic,retain) NSButton *selectImage;
@property (nonatomic,retain) NSTextField *itemIdField;
@property (nonatomic,retain) NSTextField *itemNameField;
@property (nonatomic,retain) NSImageView *imagePreview;

-(IBAction) selectItemImage;
-(IBAction) addCustomItem;

@end
