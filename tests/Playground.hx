package;

import tink.http.clients.*;
import stripe.Stripe;

class Playground {
	static function main() {
		var stripe = new Stripe('sk_test_fnSa0DhQKcwXQG8NqV8fHUWe', new SecureNodeClient());
		stripe.customers().create({
			source: 'tok_1AKShHBp0EIlVNH0MVFq2H5L',
			description: 'test',
			email: 'kevinresol@gmail.com'
		}).handle(function(o) switch o {
			case Success(data):
				trace(data, '');
			case Failure(err): 
				trace(err);
				trace(haxe.Json.parse(err.data));
		});
	}
}