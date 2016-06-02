//
//  WebViewViewController.m
//  TicTacTOOOO
//
//  Created by Mohamed Ayadi on 5/28/16.
//  Copyright © 2016 Mohamed Ayadi. All rights reserved.
//

#import "WebViewViewController.h"

@interface WebViewViewController () <UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;

@end

@implementation WebViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSURL *url =[NSURL URLWithString:@"http://www.ayadios.com/tictactoerules.html"];
    NSURLRequest *request =[NSURLRequest requestWithURL:url];
    [self.webView loadRequest:request];
    
    
}
-(void)webViewDidStartLoad:(UIWebView *)webView{
        [self.activityIndicator startAnimating];
}

-(void)webViewDidFinishLoad:(UIWebView *)webView{
        [self.activityIndicator stopAnimating];
 
    
}

@end
