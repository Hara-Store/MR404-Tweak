#import <UIKit/UIKit.h>

%hook UIApplication
- (void)finishedTest:(id)arg1 extraResults:(id)arg2 {
    %orig;
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 50)];
    label.center = CGPointMake([[UIScreen mainScreen] bounds].size.width / 2, [[UIScreen mainScreen] bounds].size.height / 2);
    label.text = @"MR_404";
    label.textColor = [UIColor yellowColor]; // ڕەنگی زەرد
    label.font = [UIFont boldSystemFontOfSize:30];
    label.textAlignment = NSTextAlignmentCenter;
    label.userInteractionEnabled = NO;
    [[UIWindow keyWindow] addSubview:label];
}
%end
