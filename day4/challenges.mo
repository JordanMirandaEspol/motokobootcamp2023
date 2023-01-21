import List "mo:base/List";
import Buffer "mo:base/Buffer";
import Array "mo:base/Array";
import Principal "mo:base/Principal";
import HashMap "mo:base/HashMap";
import Iter "mo:base/Iter";
import Blob "mo:base/Blob";

actor {

	let nombreusu = HashMap.HashMap<Principal, Text>(0, Principal.equal, Principal.hash);

	func unique<T>(l : List.List<T>, equal: (T,T) -> Bool) : List.List<T> {
		let buffer : Buffer.Buffer<T> = Buffer.fromArray<T>(List.toArray(l));
		let unicos	: Buffer.Buffer<T> = Buffer.Buffer<T>(buffer.size());
		for (b in buffer.vals()) {
			if (Buffer.contains(unicos, b, equal) == false) {
				unicos.add(b);
			};
		};
		return List.fromArray(Buffer.toArray<T>(buffer));	
	};

	func reverse<T>(l : List.List<T>) : List.List<T> {
		let arr : [var T] = Array.thaw(List.toArray(l));
		if (arr.size() == 0) {
			return l;
		};
		var indice : Nat = arr.size() - 1;
		List.iterate(l, func (x : T) {
			if (indice >= 0) {
				arr[indice] := x;
				if (indice > 0) indice -= 1;
			}
		});
		return List.fromArray(Array.freeze(arr));
	};

	public shared ({caller}) func is_anynomous() : async Bool {
		return Principal.isAnonymous(caller);
	};

	func find_in_buffer<T>(buf: Buffer.Buffer<T>, val: T, equal: (T,T) -> Bool) : ?Nat {
		var indice : Nat = 0;
		for (i in buf.vals()) {
			if (equal(i, val)) {
				return ?indice;
			};
			indice += 1;
		};
		return null;
	};

	public shared ({ caller }) func add_username(name : Text) : async () {
		nombreusu.put(caller, name);
	};

	public shared ({ caller }) func get_usernames() : async [(Principal, Text)] {
		return Iter.toArray<(Principal, Text)>(nombreusu.entries());
	};
};