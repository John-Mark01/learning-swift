# @Environment values in SwiftUI

## What is an EnvironmentValue, or variable?
- It is value that is being set in a collection of other values to our SwiftUI app's views in a structure.
  
   * This value can be of any Basic type for values - like String, Bool, Int, Double, Float, Array, Set, Dictionarty, etc.

   * You can also use custom objects to inject it into the views Environment. - you can check the article [here](https://github.com/John-Mark01/learning-swift/blob/main/SwiftUI%20Sugar%20/Environment%20%26%20EnironmentObject.md)

- Every _Value_ that is used with Environment property wrapper, needs to be provided with a [KeyPath]() - ``` \.keypath ```
- You can condition a view's content on the associated value, which you can read from the declared propery's wrapped Value. ``` Environment(\.colorScheme) ```
  ```
  if colorScheme == .dark { // Checks the wrapped value.
    DarkContent()
  } else {
    LightContent()

  }
  ```
If the value changes, SwiftUI updates any parts of the view THAT DEPEND on the value. For example, that might happen in the above exaple when the user changes the Appearance settings.

## Important Facts!

- You can use this property wrapper to red, **BUT NOT SET** an environment value. SwiftUI updates some environment values automatically based on system settings and provides reasonable defaults values for others.
- You can override some of the included, as well as set custom environment values that you define, using the Environment View Modifier.
  ### Environment Modifiers
    - Theese modifiers affect Views, like Text, Vstack, Menu, and everything that conforms to View in SwiftUI. 
      * Some examples: ``` .background(some View) ``` ``` .lineLimit(Int) ``` ``` .preferredColorScheme(ColorScheme?) ```

    - The value that you set affects the environment for the view that you modify, including it's child descendences, ONLY UP TO A POINT where ANOTHER view modifier is applied.

## How to use Environment Values?

1. We add the property wrapper and use a [KeyPath]() for the value that we need.
   * it is a convention that we name the variable the same as the [KeyPath]()
   ```
   struct ContentView: View {
    @Environment(\.colorScheme) private var colorScheme
    var body: some View {
        Text("Current color scheme: \(colorScheme)")
      }
    }
   ```
2. We use the value.
   * some values are only getters, some can be modified
  
3. If we use a custom object, or value, we need to inject it the view, that will be dependent of that Environment

## How to define Custom Environment Values?

#### Easy - 3-ish Steps (Create a variable for your app's main color)
  1. Create a file - name the file after the keyPath you want to pass in the Environment
     * import SwiftUI
     * create a structure with the same name as the keyPath
       * the struct needs to conform to ``` EnvironmentKey ``` protocol
       * add a default value - ``` static variable defaultValue: Color = Color.red ```

      ```
      import SwiftUI
      
      struct AppColorKey: EnvironmentKey {
        static var defaultValue: Color = . red
      }
      
     ```
2. Next we add an extenstion to the EnvironmentValues structure.
   * ``` extension EnvironmentValues  ```
   * inside you add a computed propery named EXACTLY as your EnvironmentKey struct
     This property will have a getter and a setter
   ```
   extension EnvironmentValues {
      var appColor: Color {
          get {
            self[AppColorKey.self]
          }
          set
          {
            self[AppColorKey.self] = newValue
          }
      }
   }
    ```
3. (OPTIONAL STEP) Extend View and add a function to use directly in any View
   * create an extension of View -  ``` extension View  ```
   * create a func named the same as the Environment value, that accepts a Color, and returns ``` some View ```
   * inside the fuction add ``` environment(\.appColor, color) ```
     ```
     extension View {
      func appColor (_ color: Color) ->  some View {
        environment(\.appColor, color)
      }
      ```
   * now you can change the app's view in ANY VIEW, and pass in another appColor (setter)
     ```
        FirstView()
          .appColor(.green)
     ```
   * also you can use the value to change a View's tint for example (getter)

## Articles 

- [Every SwiftUI Environment Value explained](https://www.fivestars.blog/articles/swiftui-environment-values/)

