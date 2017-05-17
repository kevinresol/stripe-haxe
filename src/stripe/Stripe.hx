package stripe;

import tink.http.Client;
import tink.http.Response;
import tink.http.Request;
import tink.http.Header;
import tink.web.proxy.Remote;
import tink.url.Host;

using tink.CoreApi;

private typedef Impl = Remote<stripe.api.Stripe>;

@:forward
abstract Stripe(Impl) {
	public inline function new(apiKey, client) {
		this = new Impl(new AuthedClient(apiKey, client), new RemoteEndpoint(new Host('api.stripe.com', 443)));
	}
}

class AuthedClient implements ClientObject {
	var apiKey:String;
	var client:Client;
	public function new(apiKey, client) {
		this.apiKey = apiKey;
		this.client = client;
	}
		
	public function request(req:OutgoingRequest):Promise<IncomingResponse> {
		trace(haxe.Json.stringify(apiKey));
		return client.request(new OutgoingRequest(
			req.header.concat([new HeaderField(AUTHORIZATION, 'Bearer $apiKey')]),
			req.body
		));
	}
}