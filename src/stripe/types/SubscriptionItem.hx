package stripe.types;

typedef SubscriptionItem = {
	id:String,
	created:Timestamp,
	plan:Plan,
	quantity:Int,
}