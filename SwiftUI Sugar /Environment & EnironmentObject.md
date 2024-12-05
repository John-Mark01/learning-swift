# Environment & EnironmentObject

## What is Environment & EnironmentObject?
  - First - **Environment** is a property wrapper to read a value stored in a view's environment. 
    * You can eighter read it with a keypath ``` @Environment(\.locale) ``` this mostly used for values, like __locale, colorScheme, dismiss, etc.__ - more info on the [Environment Values](https://github.com/John-Mark01/learning-swift/blob/main/SwiftUI%20Sugar%20/@Environment%20Values.md)
    * Or you can read an object from the environment ``` @Environment(Store.self) var store ```
   
  #### Note: This article will be focused on using objects in the Environment. Will be reffered as Stores, or Store()
  
  - @EnvironmentObject was used up until iOS 17, after that with the addition of @Observable macro and the Observation protocol, it has been changed to @Environment
    #### So what is @Environment?
    - @Environment is a way to create, use and maintain global state in a SwiftUI Application. An @Environment is an object (not EnvironmentObject) that can be any @Observable class.
    - It works almost like a Singlelton, but insted of calling a singleton everythime like ``` Singleton.shared.value ``` you can just access your ``` @Environment ``` value or object like a Bounded Context Container(checkout [MV Architecture](https://github.com/John-Mark01/learning-swift/blob/main/Architecture/MV%20Architecture.md)) and **CRUD** your global state.
    - An ``` @Environment ``` object can be injected in a view. 
  ```
  ContentView()
    .environment(QuizStore())
```
 After the @Environment is injected in a view, then **ALL** of the children views can access this Environment object, and use it.


## How to use Environment & EnironmentObject?
1. We create our Global State class - This class needs to be a ``` @Observable ``` class.
2. Then we inject it into the root of our project, or view 
  ```
  NavigationStack(path: $router.path) {
    RouterView {
      SplashScreen()
    }
  }
  .environment(QuizStore())

```
3. After we inject our container we access the Environment within our Views
   objects: ``` @Environment(Store.self) var store ```
   values: ``` @Environment(\.dismiss) var dismiss ``` - more info on the [Environment Values](https://github.com/John-Mark01/learning-swift/blob/main/SwiftUI%20Sugar%20/@Environment%20Values.md)
   
#### NOTE: 
We can create multiple Environment containers (@Observable classes) and inject them in multiple places in our project. Basically an Environment can be injected into any View in SwiftUI. So we can have multiple containers, that are injected in multiple places throghout our app. 
Example: 
  ```
 if user.isConnected {
    NavigationStack(path: $router.path) {
      RouterView {
        SplashScreen()
      }
    }
    .environment(UserStore())

} else {
 NavigationStack(path: $router.path) {
      RouterView {
        Onboarding()
      }
    }
    .environment(LoginStore())
}

```


## Helper Info

- Even if you inject an Environment object in a view, and then access it in your view ```@Environment(Store.self) var Store```, and NOT use the object/value in the view, the View itself will NOT be rerendered/recomputed/reevaluated/diffed etc. Or in other words, only the views that are dependent on the Environment object, or value, only then will the View get recomputed.

## Articles
- Azam Sharp - Deep Dive into Environment in SwiftUI   [go](https://azamsharp.com/2024/11/18/deep-dive-into-environment-in-swiftui.html)
