package stripe.api;

import stripe.types.*;

interface ChargesApi {
	
	@:post('/')
	@:consumes('application/x-www-form-urlencoded')
	public function create(body:{
		amount:Int,
		currency:Currency,
		?application_fee:Int,
		?capture:Bool,
		?description:String,
		?destination:{
			account:String,
			amount:Int,
		},
		?transfer_group:String,
		?on_behalf_of:String,
		// ?metadata:Metadata, // need support in tink_querystring
		?receipt_email:String,
		// ?shipping:Unknown
		?customer:String,
		?source:String, // or a hash containing card info
		?statement_descriptor:String,
	}):Charge;
}