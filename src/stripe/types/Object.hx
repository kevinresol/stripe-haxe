package stripe.types;

enum Object {
	@:json({object: 'customer'}) Customer(customer:Customer);
	@:json({object: 'card'}) Card(card:Card);
	@:json({object: 'subscription_item'}) SubscriptionItem(subscriptionItem:SubscriptionItem);
	@:json({object: 'subscription'}) Subscription(subscription:Subscription);
}