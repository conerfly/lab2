//
//  ViewController.m
//  lab2ios
//
//  Created by YuanZhengyu on 6/09/2014.
//  Copyright (c) 2014 UOW. All rights reserved.
//

#import "ViewController.h"
#import "UIColor+RandomUIColor.h"
#import "HistoryViewController.h"
#import "YoCatchModel.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *mTextField;
@property (weak, nonatomic) IBOutlet UITextField *TextField;
@property (weak, nonatomic) IBOutlet UILabel *mLabel;
- (IBAction)done:(id)sender;
@property (nonatomic, strong) NSMutableArray* historyArray;
@property (nonatomic,strong) YoCatchModel* tmp;
-(IBAction)touchButton:(id)sender;

@end

@implementation ViewController

- (IBAction)touchButton:(UIButton *)sender {
    _mLabel.text = [NSString stringWithFormat:@"%@\n%@",_mTextField.text,_TextField.text];
    self.view.backgroundColor = [UIColor redColor];
    [UIView animateWithDuration:1.0 animations:^(void) {
        self.view.backgroundColor = [UIColor randomColor];
    }];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.TextField.delegate = self;
    self.mTextField.delegate = self;
    self.view.backgroundColor = [UIColor randomColor];
	// Do any additional setup after loading the view, typically from a nib.
}
//-(void)encodeWithCoder:(NSCoder *)Coder{
//    [Coder encodeObject:[_tmp username] forKey:@"username"];
//    [Coder encodeObject:[_tmp username] forKey:@"username"];
//}
- (void)updateView:(id)sender
{
    if([sender isMemberOfClass:[_TextField class]]) {
        
        _mLabel.text = _TextField.text;
        _historyArray = [[NSMutableArray alloc] init];
        _tmp=[[YoCatchModel alloc ]initWithUserName:_mTextField.text message:_TextField.text];
        [_historyArray addObject:_tmp];
    }
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    [self updateView:_TextField];
    return YES;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"Segue"]){
        
        HistoryViewController *controller = segue.destinationViewController;
        controller.historyArray =_historyArray;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)done:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
