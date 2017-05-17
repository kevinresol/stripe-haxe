package stripe.api;

interface Stripe {
	@:sub('/v1/customers')
	var customers:Customers;
}

