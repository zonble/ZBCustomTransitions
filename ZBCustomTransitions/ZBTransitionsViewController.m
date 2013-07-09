#import "ZBTransitionsViewController.h"
#import "ZBFallenBricksAnimator.h"

@interface ZBTransitionsViewController () <UIViewControllerTransitioningDelegate>
{
	NSArray *transitions;
}
@end

@implementation ZBTransitionsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	if (!transitions) {
		transitions = @[@"ZBFallenBricksAnimator",
						@"ZBFallenBricksAnimator",
						@"ZBFallenBricksAnimator",
						@"ZBFallenBricksAnimator",
						@"ZBFallenBricksAnimator",
						@"ZBFallenBricksAnimator",
						@"ZBFallenBricksAnimator"];
	}
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [transitions count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
	cell.textLabel.text = transitions[indexPath.row];
    return cell;
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
	UIViewController *viewController = segue.destinationViewController;
	viewController.transitioningDelegate = self;
}


- (id <UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source
{
	return [[ZBFallenBricksAnimator alloc] init];
}

- (id <UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed
{
	return [[ZBFallenBricksAnimator alloc] init];
}

@end
