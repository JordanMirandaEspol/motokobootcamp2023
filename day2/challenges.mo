import Nat "mo:base/Nat";
import Int "mo:base/Int";
import Char "mo:base/Char";
import Iter "mo:base/Iter";
import {print} "mo:base/Debug";
import Array "mo:base/Array";
import Buffer "mo:base/Buffer";


 
 
actor {
    var sum : Int = 0;
    var prom:Int=0;
 public func average_array(array:[Int]) : async Int {
        for (value in array.vals()){
          sum := sum + value;
        };
        prom:=sum/array.size();
       return prom; 
    };
    public func count_character(t : Text, c : Char): async Nat{
      var counter:Nat=0;
      for(car in t.chars()){
        if (c==car){
          counter:=counter+1;
        };

      };

      return counter; 
    };
    public func factorial(n : Nat) :  async Nat{
      var factorial : Nat=1;
      var contador : Nat=1;
      while(contador < n){
        contador:=contador+1;
        factorial:=factorial*contador;
      };
      return factorial;
    };
   public func number_of_words(t : Text): async Nat{
     var numW:Nat=1;
     var siz=t.size();
     for (i in t.chars() ){
       if(i==' '){
         numW:=numW+1;
       };
     };
     return numW;
   };
       public func find_duplicates(a : [Nat]) : async [Nat]{

    var new_array : [Nat] = [];
for(i in Iter.range(0, a.size() - 1)) {
  var num:Nat=a[i];
    for(item in a.vals()) {
      if(item == num){
        new_array := Array.append<Nat>(new_array, [num]);
      };
      
    };

  };
return new_array;
};

public func convert_to_binary(n : Nat) : async Text {
        return Nat.toText(n);
    }; 

};