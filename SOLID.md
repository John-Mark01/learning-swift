# Solid principles.
## Implementation in iOS Dev (Swift & SwiftUI)


### S - Single Responsablity Principle (SRP) 
**class or module should have only one reason to change. In other words, a class should have only one responsibility or one job.**
- a reason for change is any reason - now, or in the future. 
- so the only way you can predict what is going to happen, or what is going to change is through ```abstraction``` — [OOP Principles]().
- the way we ```abstraction``` to our class or structure is through Protocols, (Intrefafces for other languages).

#### Code example (BAD CODE): 

<img width="681" alt="Screenshot 2025-06-03 at 8 57 20" src="https://github.com/user-attachments/assets/45e02cbf-8a9e-4c38-a0fc-0d7a6bc8bc55" />


This function is supposed to do 1 thing (Single Responsability), but currently doing 4 things:
- cretes a url
- creates a network call
- parses the result
- and returns a Status string. 

#### Problems: 
1. Frequent Changes Lead to Higher Maintenance Costs:
    - each time you have to make small changes to your code, then it is violating the SRP.
2. Backend Changes Break Your Logic:
    - if the backend desides that "paymentStatus" will now be "status", then your code is broken.
3. Testing Becomes More Complex:
   - since your function is doing so many things, how can you test everything and still have some time left at the end of the day?
4. Reusability is Reduced:
   - again... since your code is doing 4 thigns instead of 1, (or has 4 reasons to change, instead of 1), then you can't really reuse this function.
     
#### Solution: Protocols and Services

<img width="678" alt="Screenshot 2025-06-03 at 9 05 48" src="https://github.com/user-attachments/assets/dae6b313-0b6f-4308-9912-787011445cac" />

<img width="655" alt="Screenshot 2025-06-03 at 9 06 23" src="https://github.com/user-attachments/assets/cc9228bf-27fc-4baa-a51c-2897d487443b" />

<img width="665" alt="Screenshot 2025-06-03 at 9 06 35" src="https://github.com/user-attachments/assets/34435c9e-3352-424a-904e-287795ffa25d" />

<img width="637" alt="Screenshot 2025-06-03 at 9 06 50" src="https://github.com/user-attachments/assets/d7efe822-87f1-4705-8c89-76c4179a8a0b" />

<img width="650" alt="Screenshot 2025-06-03 at 9 07 08" src="https://github.com/user-attachments/assets/6c4109ce-3895-41de-9e75-38e97de4e947" />


- now every part of the previous function is seperated (Separation of concerns), (Decoupling), and lives in it's own class that has only one reason for change, and each class's implementation is abstract because of the protocols. 

#### Final tips: 
1. Does the cost of my effort to break down smaller components exceed the cost of maintaining and extending future features with the current state?
2. Does any actor or set of use cases out there have more than one reason to change my module, functions, or classes? You might group multiple responsibilities into a class, but there may be no use cases that require changing one responsibility without affecting the others.



### O - Open-Closed Principle (OCP)
**software entities (classes, modules, functions, etc.) should be open for extension, but closed for modification.**
- By violating OCP, you’re essentially locking yourself into a cycle of repetitive modifications that increase the likelihood of bugs, slow down development, and hurt scalability.

There is no real way to know when will you change a ceratin part of an entity because you still develop it!, but there are some techniques that can limit the chances of your app breaking because of a change.

## TODO: //Reflect on OCP More 

### L - Liskov Substitution Principle (LSP)
**“Subtypes must be substitutable for their base types.”**

- Any derived class should be able to perform everything that the base class can do, and clients (views) using the base class should not need to know whether they’re working with a base class or a subclass.
- Subclasses should not impose restrictions that break the assumptions of the base class.
  
- So this means that if I create a class/struct: ```Vehicle```, and then a Subclass: ```Car```, ```Car``` should be able to use all the properties that ```Vehicle``` has, and the client(the Views/ViewModels/Protocols) should work with both ```Vehicle``` and ```Car``` without breaking.

**To prevent violations of LSP, it’s important to:**
- Ensure that subclasses or conforming types do not override methods in ways that contradict the base behavior.
- Use composition or delegation where appropriate, instead of forcing inheritance or protocol conformance that doesn’t fully align with the expected behavior.
- Validate conditions or constraints outside of the core class logic to maintain consistency across types.


### I - Interface Segregation Principle (ISP)
**clients should not be forced to depend on interfaces they do not use.**
- this means that every client(Model, Protocol, UseCase/Service) has to use what is necessary for itself, and not conform or adhire to that is close, but not EXACTLY what this client needs.
To achive ISP, we could always:
    1. Favor abstraction - protocols/interfaces (composition), over Inheritance
    2. Make protocols smaller, and specific, not bloated to conform to many clients
 

### D - Dependency Inversion Principle (DIP)
**high-level modules should not depend on low-level modules; both should depend on abstractions.**
**abstractions should not depend on details, but details should depend on abstractions.**

* a high-level module is SwiftUI View, and @Observable ViewModel.
* a low-level module is UseCase/Service

- so what this means is, that my  ```UserViewModel``` that is responsible for ```UserView```, should not depend on RealmDatabase to get a user, but instead on a abstraction (Protocol), that is used on a UseCase/Service called UserManager ```class UserManager: UserNetworking```, and inside the viewModel, we create a dependency on the ```UserManager```, not on RealmDatabase.
That way when I decide to use SwiftData, instead of RealmDatabase, I should not change ```UserViewModel```, but instead the implementation in ```UserManager``` based on that ```UserNetworking``` protocol (abstraction).

- High-level module -  ```UserViewModel``` doesn't depend on Low-Level module  ```RealmDatabase```
- Now Low-Level modules - ```UserManager: UserNetworking``` work with implementation details, while ```UserView``` and ```UserViewModel``` does not care if anything has changed.




### Articles for the topic
- The best for iOS [go](https://medium.com/@qquang269/solid-in-ios-the-principles-youve-heard-of-but-probably-don-t-fully-understand-7a0e910c5a2a)

