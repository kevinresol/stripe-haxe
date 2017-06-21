package stripe.api;

import stripe.types.*;

interface CardApi {
	
	@:get('/')
	public function get():Card;
	
}