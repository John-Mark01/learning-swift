# TabView 

![images](https://github.com/user-attachments/assets/1f6e6eef-03c3-4e88-9364-2ac386a2a445)

- a TabView is of type: View in swiftUI. It is a placeholder for other views that will be assigned to their own custom labels, and placed in the bottom screen ot the main view.
- TabView works as a Hstack that hold a number ov views.
- The design of the different tab items acts as a Vstack, for customization.

### How to use TabView?

1. To use a TabView, you don't need to put it in some sort of Stack, you just place it in your view's body:
   
![image](https://github.com/user-attachments/assets/4ce883d5-2993-4bb1-a069-53b1ab685dd8)

2. Next, inside of the TabView's scope you place your Views in order (from leading, to trailing).

![image](https://github.com/user-attachments/assets/0faa2cd8-17b1-44d3-8cb2-fdb189b39507) ![image](https://github.com/user-attachments/assets/4b8b3bc7-ba93-4ceb-8d29-339c5b9529b5)

- right now the tabView is not visible, but it is working!
- to make it work, and assign your views a label and an image, you need to add _.tabItem{}_ modifier
  -  _.tabItem{}_ modifier acts as a VStack(), so you can stack view on top of each other. like: ![image](https://github.com/user-attachments/assets/6ecd35e7-38f6-4b6f-b09a-8a8e3835434a)


  - or you can give your tabItem a *Label*:
    
  ![image](https://github.com/user-attachments/assets/7006e408-1771-4b01-84e7-322ce9481b1a)

  - there are predefined Label objects, you can choose from. *Label* takes:
      - a String (_title_, or _titleKey_)- your items name.
      - an Image(_from assets_), Icon(_from somewhere_), or systemImage - SF Symbol (_a String_)

3. Create _.tabItem{}_ modifiers and set parameters.

![image](https://github.com/user-attachments/assets/99eb814a-7b47-4f17-910d-9689c7121801) ![image](https://github.com/user-attachments/assets/15305705-fd52-4a40-bb6c-f32d79d4c879)

- now you have a working TabView with 3,4, or more different Views in one MainView.
- Congratulations !

### Customise TabView

- You can always customise your TabView to your liking.
- One of the main things you can do is a _.accentColor()_ modifier, that takes a Color, and changes the whole TabView's color:

![image](https://github.com/user-attachments/assets/8debb4d1-aed2-45f1-b87c-f13a79267de9) ![image](https://github.com/user-attachments/assets/391d6664-fead-4dce-ad92-9cbea9663b37)




 ### Resources:
- [Apple Documentation](https://developer.apple.com/documentation/swiftui/tabview)
- [YouTube - Sean Allen](https://www.youtube.com/watch?v=tnNFoZ7CkP8)
  




