package stripe.types;

import haxe.DynamicAccess;

typedef Customer = {
  id: String,
  account_balance: Int,
  ?business_vat_id:String,
  created:Timestamp,
  ?currency:Currency,
  ?default_source:String, // expandable
  delinquent:Bool,
  ?description:String,
  ?discount:DynamicAccess<Discount>,
  ?email:String,
  livemode:Bool,
  metadata:Metadata,
  ?shipping:Shipping,
  sources:List,
  subscriptions:List,
}