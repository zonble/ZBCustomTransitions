#import "ZBDetailViewController.h"

@interface ZBDetailViewController ()

@end

@implementation ZBDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	UIBarButtonItem *closeItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(close:)];
	self.navigationItem.leftBarButtonItem = closeItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)close:(id)sender
{
	[self.navigationController.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

@end
