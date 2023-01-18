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
    public query func count_character(t : Text, c : Nat32): async Nat{
      var counter:Nat=0;
      for(car in t.chars()){
        if (car == Char.fromNat32(c)){
          counter+=1;
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
        public query func find_duplicates(a : [Nat]) : async [Nat]{
    var numbers = Buffer.Buffer<Nat>(1);

    var counter:Nat=0;
    var contain : Bool = true;

    
    for(num in a.vals()){
      for(num2 in a.vals()){
        if(num == num2){
          contain := Buffer.contains<Nat>(numbers,num, func (x : Nat, y: Nat) : Bool {x==y}); // El problema es aquí
          counter+=1;
          if(contain == false and counter > 2){
            numbers.add(num);
            counter:=0;
          };
        };
      };
    };
    return Buffer.toArray(numbers);
  };



public func convert_to_binary(n : Nat) : async Text {
        return Nat.toText(n);
    }; 

};