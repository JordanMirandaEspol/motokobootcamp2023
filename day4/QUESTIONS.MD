# <a id="questions"> 🙋 Preguntas </a>

**1. Is the heap memory saved when upgrading a canister? How much heap memory does a canister has?**

Spanish


English



**2. How much accounts can a unique Principal own?**

English

With a single Principal you can create an almost unlimited number of accounts.

Spanish

Con un solo Principal se puede crear casi un número ilimitado de cuentas.

**3. Can we safely upgrade a canister from interface A to interface B?**

Interface A

```
actor {
  public func greet(surname : Text, firstname : Text) : async Text {
    return "Hello" # firstname # surname # " !";
  };
}
```

Interface B

```
actor {
  public func greet(firstname : Text) : async Text {
    return "Hello" # firstname # " !";
  };
}
```

English
Yes, it is possible to safely update a container from interface A to interface B, this is because they are not stored variables. In addition, they have the same type of return.


Spanish
Sí, es posible actualizar de forma segura un recipiente desde la interfaz A a la interfaz B, esto se debe a que no son variables almacenadas. Además, poseen el mismo tipo de retorno.






