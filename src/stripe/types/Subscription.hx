package stripe.types;

import haxe.DynamicAccess;

typedef Subscription = {
	id:String,
	?application_fee_percent:Float,
	cancel_at_period_end:Bool,
	?canceled_at:Timestamp,
	created:Timestamp,
	current_period_end:Timestamp,
	current_period_start:Timestamp,
	customer:String,
	?discount:DynamicAccess<Discount>,
	?ended_at:Timestamp,
	items:List,
	livemode:Bool,
	metadata:Metadata,
	plan:Plan,
	quantity:Int,
	start:Timestamp,
	status:String,
	?tax_percent:Float,
	?trial_end:Timestamp,
	?trial_start:Timestamp,
}