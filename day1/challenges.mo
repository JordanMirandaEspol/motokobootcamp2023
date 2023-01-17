actor Echo {
public func multiply(n : Nat,m:Nat) : async Nat {
  return n*m;
};
public func volume(n : Nat) : async Nat {
  return n*n;
};
public func hours_to_minute(n : Nat) : async Nat {
  return n*60;
};
var counter:Nat=0;
public func set_counter(n : Nat) : async(){
  counter:=n;
  return;
};
public func get_counter() : async Nat {
  return counter;
};
public func test_divide(n : Nat,m:Nat) : async Bool {
  var residuo:Nat=n%m;
  return residuo==0;
  
};
public func is_even(n : Nat) : async Bool {
  var residuo:Nat=n%2;
  return residuo==0;
  
};
};