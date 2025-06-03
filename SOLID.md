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
- By violating OCP, you’re essentially locking yourself into a cycle of repetitive modifications that increase the likelihood of bugs, slow down development, and hurt scalability.




### Articles for the topic
- The best for iOS [go](https://medium.com/@qquang269/solid-in-ios-the-principles-youve-heard-of-but-probably-don-t-fully-understand-7a0e910c5a2a)

