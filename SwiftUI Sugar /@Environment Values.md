# @Environment values in SwiftUI

## What is an EnvironmentValue, or variable
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

## Important Facts

- You can use this property wrapper to red, **BUT NOT SET** an environment value. SwiftUI updates some environment values automatically based on system settings and provides reasonable defaults values for others.
- You can override some of the included, as well as set custom environment values that you define, using the Environment View Modifier.
  ### Environment Modifiers
    - Theese modifiers affect Views, like Text, Vstack, Menu, and everything that conforms to View in SwiftUI. 
      * Some examples: ``` .background(some View) ``` ``` .lineLimit(Int) ``` ``` .preferredColorScheme(ColorScheme?) ```

    - The value that you set affects the environment for the view that you modify, including it's child descendences, ONLY UP TO A POINT where ANOTHER view modifier is applied.
    - 

## How to use Environment Values

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
   

## How to define Custom Environment Values
