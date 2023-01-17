# <a id="questions"> 🙋 Preguntas </a>

1. How much is the current memory capacity of a canister?
Spanish

En diciembre la memoria estable de un canister, fue llevada a los 48GiB.

English

In December the stable memory of a canister was brought to 48GiB.

2. What is the issue with the following code sample?
```
actor {
  let counter : Nat = 0;
  public func increment_counter() : async () {
    counter := counter + 1;
  };
}
```
English

The problem that the code presence is that it is trying to change the value of a let type variable which is immutable.

Spanish

El problema del código es que intenta cambiar el valor de una variable de tipo let la cual es inmutable.

3. What is the issue with the following code sample?
```
actor {
  var message : Text = 0;

  public query func change_message(new_message : Text) : async () {
    message := new_message;
    return;
  };
  
  public query func see_message() : async Text {
    return(message);
  };
}
```
English

The problem in the code is that it is trying to assign a numeric value to a variable of type Text.

Spanish

El problema del codigo se encuentra en que se esta tratando de asignar un valor numerico a una variable de tipo Text.

4. False or True: we can remove the keyword async for return argument of a query function since queries are faster to answer.

False

