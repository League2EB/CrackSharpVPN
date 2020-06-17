%hook APNSubscriptionsManager
 
- (bool) hasActiveSubscription {
    return YES;
}
 
%end