package stripe.api;

import stripe.types.*;

interface CustomersApi {
	
	@:sub('/$id')
	function ofId(id:String):CustomerApi;
	
	@:get('/')
	@:consumes('application/x-www-form-urlencoded')
	function list(query:{
		?created:Timestamp,
		?ending_before:String,
		?starting_after:String,
		?limit:Int,
	}):List;
	
	@:post('/')
	@:consumes('application/x-www-form-urlencoded')
	function create(body:{
		?account_balance:Int,
		?business_vat_id:String,
		?coupon:String,
		?description:String,
		?email:String,
		// ?metadata:Metadata, // need support in tink_querystring
		?shipping:Shipping,
		?source:String, // or Card
	}):Customer;
}