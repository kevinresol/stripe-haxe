package stripe.api;

import stripe.types.*;

interface CustomerApi {
	
	@:sub('/sources')
	var cards:CardsApi;
	
	@:delete('/')
	public function delete():{deleted:Bool, id:String};
	
	@:post('/')
	@:consumes('application/x-www-form-urlencoded')
	public function update(body:{
		?account_balance:Int,
		?business_vat_id:String,
		?coupon:String,
		?default_source:String,
		?description:String,
		// ?metadata:Metadata,
		?email:String,
		// ?shipping:???,
		?source:String,
	}):Customer;
	
}