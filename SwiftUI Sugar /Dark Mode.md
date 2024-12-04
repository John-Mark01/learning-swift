# Dark Mode in SwiftUI

- SwiftUI's default color schemes <sup>.primary, .secondary etc.</sup> are adaptable to dark and light mode.
- All other Color **literals** <sup> Color.red, Color.blue</sup> they **are NOT** adaptable to dark or light mode switch.

## How to setup dark and light mode?

1. We create a custom Color
- add a new color set
- setup different colors for "Any apperience" and "Dark Apperience"
  - Any is _"Light Mode"_
  - Dark is _"Dark Mode"_

## With _@Environment_ modifier

1. Modify all of the views and subviews(Text, VStack, ZStack etc.) that use colors, to the custom colors that you have created.
  - Color("customNameForColor")
2. Add a global variable for your View
- **@Environment(\.colorScheme) var colorScheme**<sup>or any of your choise</sup>
  - _this is an @Environment variable that comes with SwitUI by default_
  - every view has a colorScheme by default. It can be:
      - Dark
      - Light
3. Now everytime a user changes his device colorScheme, your view will change automatically.

## With _[@AppStorage()](https://github.com/John-Mark01/learning-swift/blob/ac995e0efc5b321ad79cd8e1d752e5f4e60d97f7/%40AppStorage.md)_ modifier

1. Add a boolean variable "isDarkMode" in AppStorage(this saves it to UserDefaults)<sub>more info — [@AppStorage()](https://github.com/John-Mark01/learning-swift/blob/ac995e0efc5b321ad79cd8e1d752e5f4e60d97f7/%40AppStorage.md)</sub> in the **AppDelegate**. -> ![image](https://github.com/John-Mark01/learning-swift/assets/147177515/c26e35ec-2760-4973-b648-8ece366a48a3)

2. Then in **@main** view add a preferedColorScheme ternary operator to activly switch between themes -> ![image](https://github.com/John-Mark01/learning-swift/assets/147177515/c24c8175-c0ba-4923-a552-e6662ffe7902)

3. Now choose a button, switch of any element that can change the state of the "isDarkMode" variable.
- in your view create a _@State_ variable called _isDarkMode_, and set it to false. ——————————————————————————————> ![image](https://github.com/John-Mark01/learning-swift/assets/147177515/ed45c871-583c-4038-80b3-8704d973d91f)

- in your button's action set your _@State variable_ to true. ————————————————————————————> ![image](https://github.com/John-Mark01/learning-swift/assets/147177515/c75e3a1e-0074-4564-82e7-0d78e3e8e66e)

- create a **.onChange** listner on you _@State variable_, that will set _UserDefaults.standard.bool(forKey: "isDarkMode")_<sup>***(this is the @AppStorage variable we created in the @main/AppDelegate)***</sup> with a new value from _@State variable_ when the _@State variable_ updates. ![image](https://github.com/John-Mark01/learning-swift/assets/147177515/bafb51c5-15ac-486e-9d4c-91df5711d7ac)

- create a **.onAppear** modifier that sets the _@State variable to be equal to _UserDefaults.standard.bool(forKey: "isDarkMode") ————> ![image](https://github.com/John-Mark01/learning-swift/assets/147177515/71b67d36-8406-425d-91a6-0459b1cae2ad)


Resources: 
- https://youtu.be/cbJuWtGOjs4?si=awMLWctKyKZjCtyl
- https://youtu.be/Su3kDlCT3sM?si=P9y5slHbuIvT94vR
                                        

