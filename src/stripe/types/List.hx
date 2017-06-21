package stripe.types;

typedef List = {
	data:Array<Object>,
	has_more:Bool,
	?total_count:Int,
	url:String,
}