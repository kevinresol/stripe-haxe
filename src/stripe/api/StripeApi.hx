package stripe.api;

interface StripeApi {
	
	@:sub('/v1/customers')
	var customers:CustomersApi;
	
	@:sub('/v1/charges')
	var charges:ChargesApi;
	
	
}