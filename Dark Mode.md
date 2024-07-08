# Dark Mode in SwiftUI

- SwiftUI's default color schemes <sup>.primary, .secondary etc.</sup> are adaptable to dark and light mode.
- All other Color **literals** <sup> Color.red, Color.blue</sup> they **are NOT** adaptable to dark or light mode switch.

## How to setup dark and light mode?

1. We create a custom Color
- add a new color set
- setup different colors for "Any apperience" and "Dark Apperience"
  - Any is _"Light Mode"_
  - Dark is _"Dark Mode"_

## How to enable dark mode?

1. Modify all of the views and subviews(Text, VStack, ZStack etc.) that use colors, to the custom colors that you have created.
  - Color("customNameForColor")
2. Add a global variable for your View
- **@Environment(\.colorScheme) var colorScheme**<sup>or any of your choise</sup>
  - _this is an @Environment variable that comes with SwitUI by default_
  - every view has a colorScheme by default. It can be:
      - Dark
      - Light
3. Now everytime a user changes his device colorScheme, your view will change automatically.

