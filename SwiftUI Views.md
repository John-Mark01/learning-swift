# SwiftUI Views - Description, Understanding, Application

## 1. Behind the Scenes

  #### A simple SwiftUI View:
<img width="963" alt="image" src="https://github.com/user-attachments/assets/f3cf0e15-cbe7-40bf-a617-db6632bbb518">

* Every View is a value type - Struct, that is added to the stack.
* SwiftUI's views are just declarations of the views. They don't perform the actual rendering/drawing.
* Behind the scenes SwiftUI will not map every View to UIKit, or the default library. Sometimes SwiftUI will use a Virtual Class called CGDrawingView.

#### SwiftUI's views are not the actual views. They are just declarations of value type, and this declaration will be mapped to a UIKit view.

## 2. What are SwiftUI Views
### ———> A single SwiftUI view is actually a ViewModel <————
- ViewModel's purpose is to take data from a Model and BIND it to the View.
- A ViewModel also takes data from a Source and BIND it to the View.
#### Views in SwiftUI have Property Wrappers
* @State, @Binding, @Enviroment
* @GestureState, @FocusState
* @Query(SwiftData), @FetchRequest(CoreData)
  
#### Views in SwiftUI can also have: 
- Computed Properties - validation, filter, sorting
- Functions, or methods
  
**Apple themselves don't extract those things in a separate ViewModel, because the VIEW Itself acts as a ViewModel!**

  <img width="1380" alt="image" src="https://github.com/user-attachments/assets/b8a30b62-eac0-4648-817b-9aac5d1377bb">


### ———> EndPoint <———
1. SwiftUI's views are **NOT** the same as UIKit Views.
2. SwiftUI's views are their own ViewModels, so they can store methods, computed properties, and add property wrappers like @State, @Binding, etc...
3. SwiftUI views do NOT necessarily render the pixels on the screen. Most of the time they are just a declaration of a View.
   - SwiftUI views are always of value type for that reason.
  
## 3. How SwiftUI Views work 
[Great Article](https://www.malcolmhall.com/2023/03/23/learn-swiftuis-view-struct-value-semantics-diffing-and-dependency-tracking/)
