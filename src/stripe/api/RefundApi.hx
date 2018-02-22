package stripe.api;

import stripe.types.*;

interface RefundApi {
	
	@:get('/')
	public function get():Refund;
}