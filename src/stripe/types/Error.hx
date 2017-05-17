package stripe.types;

import tink.json.Value;

typedef Error = {
	type:ErrorType,
	?charge:String,
	?message:String,
	?code:String,
	?decline_code:String,
	?param:Value,
}

@:enum
abstract ErrorType(String) {
	var ApiConnectionError = 'api_connection_error';
	var ApiError = 'api_error';
	var AuthenticationError = 'authentication_error';
	var CardError = 'card_error';
	var InvalidRequestError = 'invalid_request_error';
	var RateLimitError = 'rate_limit_error';
}