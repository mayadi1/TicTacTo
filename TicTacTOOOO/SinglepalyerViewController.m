//
//  SinglepalyerViewController.m
//  TicTacTOOOO
//
//  Created by Mohamed Ayadi on 5/26/16.
//  Copyright © 2016 Mohamed Ayadi. All rights reserved.
//

#import "SinglepalyerViewController.h"
#import "ViewController.h"
@interface SinglepalyerViewController ()  <UIImagePickerControllerDelegate, UINavigationControllerDelegate>
//button remaing numbers are saved here
@property (weak, nonatomic) IBOutlet UIImageView *myImage;
@property NSMutableArray *buttonRemainder;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
//array of buttons
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *button1;
@property int score1;
@property int score2;
@property (weak, nonatomic) IBOutlet UILabel *labelplayer;
@property (weak, nonatomic) IBOutlet UILabel *labelcomputer;



@end

@implementation SinglepalyerViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    [self performSelector:@selector(computer) withObject:nil afterDelay:.7];
    
    
    self.buttonRemainder = [[NSMutableArray alloc] init];
    self.labelplayer.text = [NSString stringWithFormat:@"score:"];
    self.labelcomputer.text = [NSString stringWithFormat:@"secore:"];

//    self.labelplayer.text = [NSString stringWithFormat:@"%@: 0",self.name];
//    self.labelcomputer.text = [NSString stringWithFormat:@"%@: 0",self.computerName];
//  
}




-(IBAction)TakePhoto{
    
    picker = [[UIImagePickerController alloc] init];
    picker.delegate =self;
    [picker setSourceType:UIImagePickerControllerSourceTypeCamera];
    [self presentViewController:picker animated:YES completion:NULL];
    
    
}

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info{
    
    image =[info objectForKey:UIImagePickerControllerOriginalImage];
    [_myImage setImage:image];
    [self dismissViewControllerAnimated:YES completion:NULL];
    
    
}


-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    
    [self dismissViewControllerAnimated:YES completion:NULL];
    
}

- (IBAction)button1:(UIButton *)sender {
    
    UIImage *image1 = [UIImage imageNamed:@"x"];
    [sender setImage:image1 forState:UIControlStateNormal];
    
       // sender.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"x.png"]];
    
       [sender setEnabled:NO];
    
    [self check];
    
    [self performSelector:@selector(computer) withObject:nil afterDelay:.7];

    //[self computer];

    
    
}
- (IBAction)button2:(UIButton *)sender {
    

    UIImage *image1 = [UIImage imageNamed:@"x"];
    [sender setImage:image1 forState:UIControlStateNormal];
    
    
    
    [sender setEnabled:NO];

    [self check];

    [self performSelector:@selector(computer) withObject:nil afterDelay:.7];
}
- (IBAction)button3:(UIButton *)sender {
  

    
    UIImage *image1 = [UIImage imageNamed:@"x"];
    [sender setImage:image1 forState:UIControlStateNormal];
    
    [sender setEnabled:NO];

    [self check];

    [self performSelector:@selector(computer) withObject:nil afterDelay:.7];
}
- (IBAction)button4:(UIButton *)sender {

    
    
    UIImage *image1 = [UIImage imageNamed:@"x"];
    [sender setImage:image1 forState:UIControlStateNormal];
    
    [sender setEnabled:NO];

    [self check];

    [self performSelector:@selector(computer) withObject:nil afterDelay:.7];
}
- (IBAction)button5:(UIButton *)sender {

    
    UIImage *image1 = [UIImage imageNamed:@"x"];
    [sender setImage:image1 forState:UIControlStateNormal];
    
    [sender setEnabled:NO];

    [self check];

    [self performSelector:@selector(computer) withObject:nil afterDelay:.7];
}
- (IBAction)button6:(UIButton *)sender {
    
    
    UIImage *image1 = [UIImage imageNamed:@"x"];
    [sender setImage:image1 forState:UIControlStateNormal];
    
    [sender setEnabled:NO];

    [self check];

    [self performSelector:@selector(computer) withObject:nil afterDelay:.7];
}
- (IBAction)button7:(UIButton *)sender {

    
    UIImage *image1 = [UIImage imageNamed:@"x"];
    [sender setImage:image1 forState:UIControlStateNormal];
    
    [sender setEnabled:NO];

    [self check];

    [self performSelector:@selector(computer) withObject:nil afterDelay:.7];
}
- (IBAction)button8:(UIButton *)sender {

    
    UIImage *image1 = [UIImage imageNamed:@"x"];
    [sender setImage:image1 forState:UIControlStateNormal];
    
    [sender setEnabled:NO];

    [self check];

    [self performSelector:@selector(computer) withObject:nil afterDelay:.7];
}
- (IBAction)button9:(UIButton *)sender {

    
    UIImage *image1 = [UIImage imageNamed:@"x"];
    [sender setImage:image1 forState:UIControlStateNormal];
    
 //   sender.imageView.image =[UIImage imageNamed:@"x"];

    
    
    
    
    [sender setEnabled:NO];

    [self check];

    [self performSelector:@selector(computer) withObject:nil afterDelay:.7];
    
    
    
}

-(void)alert{
    self.score1 = self.score1+1;
   // self.labelplayer.text = [NSString stringWithFormat:@"Score:%i",self.score1/3];
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"" message:@"Player 1 wins" preferredStyle:UIAlertControllerStyleAlert];
    
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
    self.score2 = self.score2+1;
    //self.labelcomputer.text = [NSString stringWithFormat:@"Score:%i",self.score2];
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"" message:@"Computer win" preferredStyle:UIAlertControllerStyleAlert];
    
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
        
            
  
    
    
}

-(void)computer{
    NSMutableArray *enableButton;
    
    enableButton=[[NSMutableArray alloc]init];

    
    UIImage *image2 = [UIImage imageNamed:@"o"];
    
    if(self.type == 0){
    
    [self check];
    
    for(int k=0; k<self.button1.count; k++){
        
        
        if([self.button1[k] isEnabled]){
            
            
            UIButton * button = [self.button1 objectAtIndex: k];
            
            
            
            [button setImage:image2 forState:UIControlStateNormal];
            
            [button setEnabled:NO];
            
            break;

        }
    }

      [self check];
}
    
    if(self.type == 1){
        [self check];
        
        for(int k=0; k<self.button1.count; k++)
        {

            if([self.button1[k] isEnabled]){
                
                [enableButton addObject:self.button1[k]];
                
            }
        
        
        }
        
        NSUInteger randomIndex = arc4random() % [enableButton count];
        
       
        for(int k=0; k<self.button1.count; k++)
        {
            if(enableButton[randomIndex] == self.button1[k]){
            
                UIButton * buttonNew = self.button1[k];
                

                [buttonNew setImage:image2 forState:UIControlStateNormal];
                
                [self.button1[k] setEnabled:NO];

                
                           break;
                      }
            
        }
  
    
}
}

@end
