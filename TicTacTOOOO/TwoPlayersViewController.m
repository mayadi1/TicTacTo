//
//  TwoPlayersViewController.m
//  TicTacTOOOO
//
//  Created by Mohamed Ayadi on 5/30/16.
//  Copyright © 2016 Mohamed Ayadi. All rights reserved.
//

#import "TwoPlayersViewController.h"

@interface TwoPlayersViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *button1;

@end

@implementation TwoPlayersViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.label.text = [NSString stringWithFormat:@"x"];
    
}

-(IBAction)button:(UIButton *)sender{
    
    
    
    if([self.label.text isEqualToString:@"x"]){
        
        
        UIImage *image1 = [UIImage imageNamed:@"x"];
        [sender setImage:image1 forState:UIControlStateNormal];
        self.label.text = [NSString stringWithFormat:@"o"];
        
        
    }
    else{
    
        
        UIImage *image1 = [UIImage imageNamed:@"o"];
        [sender setImage:image1 forState:UIControlStateNormal];
        self.label.text = [NSString stringWithFormat:@"x"];
        
        
    }
    
    [self check];
    
    
}

-(void)alert{
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"" message:@"wins" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *newGame =[UIAlertAction actionWithTitle:@"New game" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        for(int k=0; k<self.button1.count; k++)
        {
            UIButton * button = [self.button1 objectAtIndex: k];
            [button setEnabled:YES];
            [button setImage: nil forState: UIControlStateNormal];
        }
        
        
    }];
    
    
    UIAlertAction *cancelButton= [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil];
    
    [alert addAction:cancelButton];
    [alert addAction:newGame];
    [self presentViewController:alert animated:YES completion:nil];
    
}

-(void)alert2{
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"" message:@"It's a Tie" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *newGame =[UIAlertAction actionWithTitle:@"New game" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        for(int k=0; k<self.button1.count; k++)
        {
            UIButton * button = [self.button1 objectAtIndex: k];
            [button setEnabled:YES];
            [button setImage: nil forState: UIControlStateNormal];
        }
        
        
    }];
    
    
    UIAlertAction *cancelButton= [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil];
    
    [alert addAction:cancelButton];
    [alert addAction:newGame];
    [self presentViewController:alert animated:YES completion:nil];
    
}

-(void)alert3{
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"" message:@" win" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *newGame =[UIAlertAction actionWithTitle:@"New game" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        for(int k=0; k<self.button1.count; k++)
        {
            UIButton * button = [self.button1 objectAtIndex: k];
            [button setEnabled:YES];
            [button setImage: nil forState: UIControlStateNormal];
        }
        
        
    }];
    
    
    UIAlertAction *cancelButton= [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil];
    
    [alert addAction:cancelButton];
    [alert addAction:newGame];
    [self presentViewController:alert animated:YES completion:nil];
    
}
//
-(void)check{
    UIButton * button1 = [self.button1 objectAtIndex:0];
    UIButton * button2 = [self.button1 objectAtIndex:1];
    UIButton * button3 = [self.button1 objectAtIndex:2];
    UIButton * button4 = [self.button1 objectAtIndex:3];
    UIButton * button5 = [self.button1 objectAtIndex:4];
    UIButton * button6 = [self.button1 objectAtIndex:5];
    UIButton * button7 = [self.button1 objectAtIndex:6];
    UIButton * button8 = [self.button1 objectAtIndex:7];
    UIButton * button9 = [self.button1 objectAtIndex:8];
    
    
    
    
    if([button1.currentImage isEqual: button2.currentImage] &&[button1.currentImage isEqual: button3.currentImage] ){
        UIImage *img = [button1 imageForState:UIControlStateNormal];
        NSData *data1 = UIImagePNGRepresentation(img);
        
        if ([data1  isEqual:UIImagePNGRepresentation([UIImage imageNamed:@"x.png"])])
        {
            [self alert];
        }
        else {
            [self alert3];
            
        }
        
        
    }
    
    
    
    
    if([button4.currentImage isEqual: button5.currentImage] &&[button4.currentImage isEqual: button6.currentImage] ){
        UIImage *img = [button4 imageForState:UIControlStateNormal];
        NSData *data1 = UIImagePNGRepresentation(img);
        if ([data1  isEqual:UIImagePNGRepresentation([UIImage imageNamed:@"x.png"])])
        {
            [self alert];
        }
        else {
            [self alert3];
            
        }
    }
    
    
    if([button7.currentImage isEqual: button8.currentImage] &&[button8.currentImage isEqual: button9.currentImage] ){
        UIImage *img = [button7 imageForState:UIControlStateNormal];
        NSData *data1 = UIImagePNGRepresentation(img);
        if ([data1  isEqual:UIImagePNGRepresentation([UIImage imageNamed:@"x.png"])])
        {
            [self alert];
        }
        else {
            [self alert3];
            
        }
    }
    
    
    if([button1.currentImage isEqual: button4.currentImage] &&[button4.currentImage isEqual: button7.currentImage] ){
        UIImage *img = [button4 imageForState:UIControlStateNormal];
        NSData *data1 = UIImagePNGRepresentation(img);
        if ([data1  isEqual:UIImagePNGRepresentation([UIImage imageNamed:@"x.png"])])
        {
            [self alert];
        }
        else {
            [self alert3];
            
        }
    }
    
    
    
    if([button3.currentImage isEqual: button6.currentImage] &&[button6.currentImage isEqual: button9.currentImage] ){
        UIImage *img = [button6 imageForState:UIControlStateNormal];
        NSData *data1 = UIImagePNGRepresentation(img);
        if ([data1  isEqual:UIImagePNGRepresentation([UIImage imageNamed:@"x.png"])])
        {
            [self alert];
        }
        else {
            [self alert3];
            
        }
    }
    
    
    if([button1.currentImage isEqual: button5.currentImage] &&[button5.currentImage isEqual: button9.currentImage] ){
        UIImage *img = [button9 imageForState:UIControlStateNormal];
        NSData *data1 = UIImagePNGRepresentation(img);
        if ([data1  isEqual:UIImagePNGRepresentation([UIImage imageNamed:@"x.png"])])
        {
            [self alert];
        }
        else {
            [self alert3];
            
        }
    }
    
    
    if([button3.currentImage isEqual: button5.currentImage] &&[button5.currentImage isEqual: button7.currentImage] ){
        UIImage *img = [button5 imageForState:UIControlStateNormal];
        NSData *data1 = UIImagePNGRepresentation(img);
        if ([data1  isEqual:UIImagePNGRepresentation([UIImage imageNamed:@"x.png"])])
        {
            [self alert];
        }
        else {
            [self alert3];
            
        }
    }
    
    
    
    if([button2.currentImage isEqual: button5.currentImage] &&[button5.currentImage isEqual: button8.currentImage] ){
        UIImage *img = [button2 imageForState:UIControlStateNormal];
        NSData *data1 = UIImagePNGRepresentation(img);
        
        if ([data1  isEqual:UIImagePNGRepresentation([UIImage imageNamed:@"x.png"])])
        {
            [self alert];
        }
        else {
            [self alert3];
            
        }
    }
    
    
    
    
    
    if(([self.button1[0] isEnabled] == NO) && ([self.button1[1] isEnabled] == NO) && ([self.button1[2] isEnabled] == NO) && ([self.button1[3] isEnabled] == NO) && ([self.button1[4] isEnabled] == NO) && ([self.button1[5] isEnabled] == NO) && ([self.button1[6] isEnabled] == NO) && ([self.button1[7] isEnabled] == NO) && ([self.button1[8] isEnabled] == NO)){
        
        [self alert2];
        
        
    }
    
    
//
//    
//    
}
//
//

@end
