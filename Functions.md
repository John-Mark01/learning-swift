# Best practices on functions and methods
**theese concepts are taken from the "Clen Code" book, by Robert C. Martin (uncle Bob)**

## What is a function
- a function is a small block of code, that is executable from the scope it was created in.
- functions that are members of a structure or a class, are called ```methods```
- a function as any other piece of code should apply all of [SOLID PRINCIPLES]()

## Conventions

### Naming
  - a function's name CAN be long, but descriptive - ```parseResultForAdminUser```
  - a function's name will describe what it will do - ```createUser()```, ```applyChangesToMainThread()```

### Reason/Action
  - a function should always ```do on thing``` (SRP) 
  - a function should only reach the same, or one level down in it's abstraction, or have one reason for change (OCP)

  good function: 
  ```
  func getUser() -> User {
    return networkService.getUser()
  }
  ```

 bad function: 
  ```
  func getUser() -> User {
    let userData = networkService.getUserData()
    var userModel = User()
    userModel.name = userData['NAME']
    userModel.age = userData['AGE']
    
    retrun userModel
  }
  ```
* this fucntion violates SRP, because it parses the data, and gets the user.
* also violates OCP, because it has multiple reasons for change - ```"Name"```, ```"AGE"``` can be changed by the backend, to ```"USER_NAME"``` and ```"USER_AGE"```, and it will break the code.
  
- a function should be small - MAX 20 rows long

### Parameters
a function can have as many parameters as we want. However we must consider **readability, testablity, and clen code principles**
We don't write code for ourselves. We write it so it can be read~
that said, a function is accepted if is being ```monadyc```, ```dyalic```, ```triad```.

- it's best if a function can be ```monadyc``` (0 parameters) - ```getUsers()```
- a function
