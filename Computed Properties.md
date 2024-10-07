### Computed Properties
- getters and setters

## What are getters and setters?
- Getters and setters are modifiers of a variable. Essentially they are a custom function that is declared at the initialization of a variable.
- We ALWAYS need to specify the type of the property
- _Usual Example:_ if I am going to use an Int variable **age** and I know that the value of that variable will be changed under a condition, like a simple calculation, I might be tempted to declare **age** as _nil_, or _0_, and then create a function called 'calculateAge()' to update the **age** variable:

<img width="374" alt="image" src="https://github.com/user-attachments/assets/4264dcda-901f-499f-abfb-a2f031dc6b9d">

- _New Example:_ instead of making different functions for running code when setting, or getting the value of the **age** property of Person, we can add those modifiers right after declaring the properties:
<img width="479" alt="image" src="https://github.com/user-attachments/assets/9fd5dfbe-e7bd-4a28-8c62-d4c58dd72550"> <img width="645" alt="image" src="https://github.com/user-attachments/assets/df2e7d95-9a83-4d78-a1ac-d553abde2538">



## Getters 
- The getter of a property executes whenever we try to access the value of that property.
- It's syntax starts and ends with {curly braces}:
  ```
  get {
  //code
  }
  ```
## Setters 
#What are they? 
- a setter is a block of code that is executed at the time when a new value has been **set** to the variable
- Its syntax starts and ends with {curly braces}:
  ```
  set {
  //code
  }
  ```
*There is a special keyword that we use to use the new value that will be set in the setter, and it's syntax is _newValue_.*
- So every time we set a new value to age, (in our example) we set the age in UserDefaults.


There is an even more sophisticated way to write code and that is with [Observed Properties]()
