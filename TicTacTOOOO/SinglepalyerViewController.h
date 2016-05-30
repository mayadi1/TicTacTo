//
//  SinglepalyerViewController.h
//  TicTacTOOOO
//
//  Created by Mohamed Ayadi on 5/26/16.
//  Copyright © 2016 Mohamed Ayadi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SinglepalyerViewController : UIViewController
{
    UIImagePickerController *picker;
    UIImage *image;
    
}
@property (weak, nonatomic) IBOutlet UIButton *photo;
@property NSString *name;
@property NSString *computerName;
@property int type;
-(IBAction)TakePhoto;

@end
