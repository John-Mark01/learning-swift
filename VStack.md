
# VStack()
a VStack confronts and is of type View. Which means, that if you try and put two Vstacks together in a code, you would create two seperate views. Same thing goes for HStack & ZStack.
- a VStack also renders all views within it (Text, Spacer(), Image, etc.) at once> Regardless of whether they are on, or offscreen.
- a regular VStack is best used when you have a small number of subviews... or, don't want the deleyed rendering behaviour of the "lazy" stack.

![image](https://github.com/John-Mark01/learning-swift/assets/147177515/99263ae7-ae55-4da0-a0b5-a5fbb6af1186)
![image](https://github.com/John-Mark01/learning-swift/assets/147177515/745bc447-0c91-48bd-8e83-ad302d59a22e)

### VStacks can be initialized with a couple of specified parameters
- ***alignment:*** _HorisontalAlignment_ ->

  ![image](https://github.com/John-Mark01/learning-swift/assets/147177515/1b588043-db82-4d1b-8257-0bb57f51fd01)

  
- ***spacing:*** a CGFloat that specifies how much space all elements and subviews have between each other
           if "nil", the sapacing will be set to default

- ***content:*** this is what will be within the VStack
  

