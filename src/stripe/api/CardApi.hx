package stripe.api;

import stripe.types.*;

interface CardApi {
	
	@:get('/')
	public function get():Card;
	
	@:delete('/')
	public function delete():{id:String, deleted:Bool};
	
}