package stripe.types;

import tink.Stringly;

@:enum
abstract Currency(String) to Stringly {
	var HKD = 'hkd';
	var USD = 'usd';
}