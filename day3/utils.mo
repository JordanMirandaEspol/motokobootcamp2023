import Array "mo:base/Array";
import Int "mo:base/Int";
import Buffer "mo:base/Buffer";
module Utils{
  public func second_max(array : [Int]) : async Int {
    let arreglosi = array.size();
    if(arreglosi == 0) {
        return 0;}
    else if(arreglosi == 1){
        return array[0];
    }; 
    if(arreglosi >= 2){
      let arrayorder = Array.sort(array, Int.compare);
      let maximo = arrayorder[arreglosi - 2];
      return maximo;
    };
    0;
  };
  public func remove_even(array : [Nat]) : async [Nat]{
    Array.filter<Nat>(array, func x = x % 2 == 1);
  };
  public func drop<T>(array : [T], n : Nat) : [T]{
    if(n >= 1){
      let buff = Buffer.fromArray<T>(array);
      buff.filterEntries(func(i, x) = i > n-1);
      let arraycon = Buffer.toArray(buff);
      return arraycon;
    } else return array;
  };

}