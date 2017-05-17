package stripe.api;

import stripe.types.*;

interface Customers {
	
	@:post('/')
	@:consumes('application/x-www-form-urlencoded')
	public function create(body:{
		?account_balance:Int,
		?business_vat_id:String,
		?coupon:String,
		?description:String,
		?email:String,
		// ?metadata:Metadata, // need support in tink_querystring
		?shipping:Shipping,
		?source:String, // or Card
	}):CustomerResponse;
}

typedef CustomerResponse = {
	>Response,
	>Customer,
}