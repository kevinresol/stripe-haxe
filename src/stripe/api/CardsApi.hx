package stripe.api;

import stripe.types.*;

interface CardsApi {
	
	@:sub('/$id')
	function ofId(id:String):CardApi;
	
	@:post('/')
	@:consumes('application/x-www-form-urlencoded')
	public function create(body:{
		source:String,
		// ?metadata:Metadata, // need support in tink_querystring
	}):Card;
	
	
	@:get('/')
	public function list(query:{
		object:String, // always specify as "card"
		?ending_before:String,
		?starting_after:String,
		?limit:Int,
	}):List;
	
}