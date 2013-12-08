//
//  GiftRegistryViewController.h
//  WeddingSync
//
//  Created by Marc A Myers on 12/2/13.
//  Copyright (c) 2013 RVC Student. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GiftRegistryViewController : UIViewController
<UIPickerViewDataSource> {
    IBOutlet UIPickerView *giftURL;
    IBOutlet UIWebView *giftWebView;
    
}

@property (nonatomic, retain) UIPickerView *giftURL;
@property (nonatomic, retain) UIWebView *giftWebView;


@end
