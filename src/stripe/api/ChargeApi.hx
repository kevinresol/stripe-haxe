package stripe.api;

import stripe.types.*;

interface ChargeApi {
	
	@:get('/')
	@:consumes('application/x-www-form-urlencoded')
	public function get():Charge;
}