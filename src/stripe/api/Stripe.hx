package stripe.api;

interface Stripe {
	@:sub('/v1/customers')
	var customers:Customers;
	@:sub('/v1/charges')
	var charges:Charges;
}

