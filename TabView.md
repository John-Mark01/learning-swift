# TabView 

![images](https://github.com/user-attachments/assets/1f6e6eef-03c3-4e88-9364-2ac386a2a445)

- a TabView is of type: View in swiftUI. It is a placeholder for other views that will be assigned to their own custom labels, and placed in the bottom screen ot the main view.

### How to use TabView?

1. To use a TabView, you don't need to put it in some sort of Stack, you just place it in your view's body:
   
![image](https://github.com/user-attachments/assets/4ce883d5-2993-4bb1-a069-53b1ab685dd8)

2. Next, inside of the TabView's scope you place your Views in order (from leading, to trailing).

![image](https://github.com/user-attachments/assets/0faa2cd8-17b1-44d3-8cb2-fdb189b39507) ![image](https://github.com/user-attachments/assets/4b8b3bc7-ba93-4ceb-8d29-339c5b9529b5)

- right now the tabView is not visible, but it is working!
- to make it work, and assign your views a label and an image, you need to add _.tabItem{}_ modifier
  - when initializing the _.tabItem{}_ modifier, you need to give your view a *Label*.
  - there are predefined Label objects, you can choose from. *Label* takes:
      - a String (_title_, or _titleKey_)- your items name.
      - an Image(_from assets_), Icon(_from somewhere_), or systemImage - SF Symbol (_a String_)

3. Create _.tabItem{}_ modifiers and set parameters.

![image](https://github.com/user-attachments/assets/99eb814a-7b47-4f17-910d-9689c7121801) ![image](https://github.com/user-attachments/assets/15305705-fd52-4a40-bb6c-f32d79d4c879)

- now you have a working TabView with 3,4, or more different Views in one MainView.
- Congratulations !

 ### Resources:
- Apple Documentation
  




