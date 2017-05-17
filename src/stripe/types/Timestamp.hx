package stripe.types;

import tink.json.Representation;

abstract Timestamp(Date) {
	inline function new(v)
		this = v;
		
	@:from static inline function ofRep(rep:Representation<Float>)
		return new Timestamp(Date.fromTime(rep.get() * 1000));
		
	@:to inline function toRep():Representation<Float>
		return new Representation(this.getTime() / 1000);
}