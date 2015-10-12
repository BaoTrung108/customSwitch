//
//  ViewController.m
//  customSwitch
//
//  Created by trung bao on 12/10/2015.
//  Copyright © 2015 baotrung. All rights reserved.
//

#import "ViewController.h"
#import "custom.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *image;

@end

@implementation ViewController {
    custom *myswitch;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.image.image=[UIImage imageNamed:@"onSwitch"];
    myswitch=[[custom alloc] initWithFrame:CGRectMake(0, 0, 100, 50)];
    myswitch.center =CGPointMake(self.view.bounds.size.width*0.5, 120);
    [myswitch addTarget:self
                 action:@selector(switchchange:)
       forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:myswitch];
}
-(void) switchchange: (custom*) customswitch {
    NSLog(@"%d",customswitch.value);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)buttonOff:(id)sender {
    self.image.image=[UIImage imageNamed:@"offSwitch"];
}
- (IBAction)buttonOn:(id)sender {
    self.image.image=[UIImage imageNamed:@"onSwitch"];
}

@end
