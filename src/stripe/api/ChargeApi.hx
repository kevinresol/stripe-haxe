package stripe.api;

import stripe.types.*;

interface ChargeApi {
	
	@:get('/')
	public function get():Charge;
}