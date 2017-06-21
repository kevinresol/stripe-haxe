package stripe.api;

import stripe.types.*;

interface CustomerApi {
	
	@:sub('/sources')
	var cards:CardsApi;
	
	@:delete('/')
	public function delete():{deleted:Bool, id:String};
	
}