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
	public inline function new(apiKey, client:Client, ?idempotencyKey) {
		client = new AuthedClient(apiKey, client);
		if(idempotencyKey != null) client = new IdempotentClient(idempotencyKey, client);
		this = new Impl(client, new RemoteEndpoint(new Host('api.stripe.com', 443)));
	}
}

class AuthedClient extends AppendHeaderClient {
	public function new(apiKey, client)
		super(AUTHORIZATION, 'Bearer $apiKey', client);
}

class IdempotentClient extends AppendHeaderClient {
	public function new(key, client)
		super('Idempotency-Key', key, client);
}

class AppendHeaderClient implements ClientObject {
	var field:HeaderField;
	var client:Client;
	
	public function new(name, value, client) {
		this.field = new HeaderField(name, value);
		this.client = client;
	}
		
	public function request(req:OutgoingRequest):Promise<IncomingResponse>
		return client.request(new OutgoingRequest(req.header.concat([field]), req.body));
}