### Stacks (VStack, HStack, ZStack)

## VStack()
- a Vstack confronts and is of type View. Which means, that if you try and put two Vstacks together in a code, you would create two seperate views. Same thing goes for Hstack & Zstack.
- a VStack also renders all views within it (Text, Spacer(), Image, etc.) at once> Regardless of whether they are on, or offscreen.
- a regular VStack is best used when you have a small number of subviews... or, don't want the deleyed rendering behaviour of the "lazy" stack.

 https://developer.apple.com/documentation/swiftui/vstack
