package stripe.types;

enum Object {
	@:json({object: 'customer'}) Customer(customer:Customer);
	@:json({object: 'card'}) Card(card:Card);
}