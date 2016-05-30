//
//  SingleSignInViewController.m
//  TicTacTOOOO
//
//  Created by Mohamed Ayadi on 5/29/16.
//  Copyright © 2016 Mohamed Ayadi. All rights reserved.
//

#import "SingleSignInViewController.h"
#import "SinglepalyerViewController.h"
@interface SingleSignInViewController ()
@property (weak, nonatomic) IBOutlet UITextField *label1;
@property (weak, nonatomic) IBOutlet UISegmentedControl *seg;

@property (weak, nonatomic) IBOutlet UITextField *label2;
@end

@implementation SingleSignInViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    SinglepalyerViewController *dvc= segue.destinationViewController;
    dvc.name = self.label1.text;
    dvc.computerName = self.label2.text;
    
    switch (self.seg.selectedSegmentIndex) {
        case 0:
            
            dvc.type = 0;
            
            break;
        case 1:
            
            dvc.type = 1;
            
            break;
        case 2:
            
            dvc.type = 2;
            
            break;
            
        default:
            break;
    }
    
}
- (IBAction)back:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];

}

@end
