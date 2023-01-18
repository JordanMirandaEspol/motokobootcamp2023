# <a id="questions"> 🙋 Preguntas </a>

**1. Who controls the ledger canister?**

Spanish
NNS


English
NNS


**2. What is the subnet of the canister with the id: mwrha-maaaa-aaaab-qabqq-cai? How much nodes are running this subnet?**

English

pae4o-o6dxf-xki7q-ezclx-znyd6-fnk6w-vkv5z-5lfwh-xym2i-otrrw-fqe and 16 nodes.

Spanish

pae4o-o6dxf-xki7q-ezclx-znyd6-fnk6w-vkv5z-5lfwh-xym2i-otrrw-fqe y tiene 16 nodos

**3. I have a neuron with 1O ICPs locked with a dissolve delay of 4 years - my neuron has been locked for 2 years. What is my expected voting power?**

English



Spanish


**4. What is wrong with the following code?**
```
actor {
  let n : Nat = 50;
  let t : Text = "Hello";

  public func convert_to_text(m : Nat) : async Text {
    Nat.toText(m);
  };
 
}
```
English

The problem with the code is that the import Nat "mo:base/Nat" is missing;

Spanish

El problema del codigo se encuentra en que se falta realizar el import Nat "mo:base/Nat";.

**5. What is wrong with the following code?**
```
    actor {
    var languages : [var Text] = ["English", "German", "Chinese", "Japanese", "French"];

    public func show_languages(language : Text) : async [var Text] {
        return (languages);
    };
    
    }
```

English

The code problem is a syntax problem when declaring the array. Since you are trying to define a mutable array but the structure is wrong, this is the correct structure ```var languages : [var Text] = [var "English", "German", "Chinese", "Japanese", "French"];``` a possible solution could be:
```
   actor {
  var languages : [Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public func show_languages(language : Text) : async [Text] {
    return (languages);
  };
}
```

Spanish

El problema del codigo, es un problema de sintaxis al declarar el array. Puesto que, esta tratando de definir un arreglos mutables pero la estructura es erronea, esta es la estructura correcta ```var languages : [var Text] = [var "English", "German", "Chinese", "Japanese", "French"];``` una posible solución podría ser:
```
   actor {
  var languages : [Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public func show_languages(language : Text) : async [Text] {
    return (languages);
  };
}
```


 
**6. What is wrong with the following code?**
```
actor {
  var languages : [Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public func add_language(new_language: Text) : async [Text] {
    languages := Array.append<Text>(languages, [new_language]);
    return (languages);
  };
 
}
```
English

The problem with the code is that the import Array "mo:base/Array" is missing;

Spanish

El problema del codigo se encuentra en que se falta realizar el import Array "mo:base/Array";.

