#import <UIKit/UIKit.h>

%hook UIViewController
- (void)viewDidAppear:(BOOL)animated {
    %orig;

    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 300, 100)];
        label.center = CGPointMake([[UIScreen mainScreen] bounds].size.width / 2, [[UIScreen mainScreen] bounds].size.height / 2);
        label.text = @"MR_404";
        label.textColor = [UIColor yellowColor];
        label.font = [UIFont boldSystemFontOfSize:40];
        label.textAlignment = NSTextAlignmentCenter;
        label.userInteractionEnabled = NO;

        [[UIApplication sharedApplication].keyWindow addSubview:label];
    });
}
%end
