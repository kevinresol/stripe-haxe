package stripe.types;

import tink.json.Value;

typedef Refund = {
	id:String,
	// object:String,
	amount:Int,
	balance_transaction:String,
	charge:String,
	created:Timestamp,
	currency:Currency,
	?failure_balance_transaction:String,
	?failure_reason:String,
	metadata:Metadata,
	?reason:String,
	?receipt_number:String,
	status:String,
}