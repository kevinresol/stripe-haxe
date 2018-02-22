package stripe.api;

import stripe.types.*;

interface RefundsApi {
	
	@:sub('/$id')
	function ofId(id:String):RefundApi;
	
	@:post('/')
	@:consumes('application/x-www-form-urlencoded')
	public function create(body:{
		charge:String,
		?amount:Int,
		?reason:String,
		?refund_application_fee:Bool,
		?reverse_transfer:Bool,
		// ?metadata:Metadata, // need support in tink_querystring
	}):Refund;
}