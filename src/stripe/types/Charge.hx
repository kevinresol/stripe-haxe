package stripe.types;

import tink.json.Value;

typedef Charge = {
	id:String,
	object:String,
	amount:Int,
	amount_refunded:Int,
	?application:String,
	?application_fee:String,
	balance_transaction:String,
	captured:Bool,
	created:Timestamp,
	currency:String,
	customer:String,
	?description:String,
	?destination:String,
	?dispute:String,
	?failure_code:String,
	?failure_message:String,
	fraud_details:{
		?user_report:String, // "safe" or "fraudulent"
		?stripe_report:String, // "fraudulent"
	},
	?invoice:String, // expandable Invoice
	livemode:Bool,
	metadata:Metadata,
	?on_behalf_of:String, // expandable Account
	?order:String, // expandable Order
	outcome: {
		network_status:String,
		?reason:String,
		risk_level:String,
		seller_message:String,
		type:String,
	},
	paid:Bool,
	?receipt_email:String,
	?receipt_number:String,
	refunded:Bool,
	refunds:List,
	?review:String, // expandable Review
	?shipping:Shipping,
	source:Object,
	?source_transfer:String, // expandable Transfer
	?statement_descriptor:String,
	status:String,
	?transfer_group:String,
}