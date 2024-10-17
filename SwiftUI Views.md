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
2. SwiftUI's views are their own ViewModels, so they can store methods, and computed properties, and add property wrappers like @State, @Binding, etc...
3. SwiftUI views do NOT necessarily render the pixels on the screen. Most of the time they are just a declaration of a View.
   - SwiftUI views are always of value type for that reason.
  
## 3. How SwiftUI Views work 
[Great Article](https://www.malcolmhall.com/2023/03/23/learn-swiftuis-view-struct-value-semantics-diffing-and-dependency-tracking/)

## 4. Screens vs Views


<img width="1276" alt="image" src="https://github.com/user-attachments/assets/b1dc9704-cce2-49af-835f-c51a94aacd1b">

- there is no syntax in SwiftUI. It's just a separation between the parent container and the separate child views.
  #### The main purpose of the screen is to hold the data about the different child VIEWS(Sub-Views) in it.
  #### The main purpose of a View is to be REUSABLE and will not hold data. It will GET data from the parent(Screen)
- The **Screen** will represent individual screen of the app - **Home Screen**. They are **NOT REUSABLE** they just hold different child views within them.

 <img width="609" alt="image" src="https://github.com/user-attachments/assets/0b7f3780-e044-4f5f-8360-ddf783006728">

## 5. Adding actions in reusable Views.
- if you have an action that you want trigger in a nested/child/sub-View, or in other words - Views. You should put the action directly into the Sub-View.
  What should you do?

  1. Instead of calling the actions in the SubView, create closures that will be used in the ParentView/Screen.
     ```
     let onDelete: (Type) -> Void
     let onMarkAsDone: (Type) -> Bool
     
     ```
  2. Grouping events together.
    - once you have a lot of actions in a Sub-View, in the parent Screen the call for that Sub-View might become difficult to read.
    - So you can do an Events, via enum in your SUB-VIEW.

   ```
    enum SubViewEvents {
      case onDelete(Type)
      case markFavourite(Type)
   }
   ```

    - Now insted of passing in 2, 3, or more actions, you just add one, that will return the EventEnum
    ```
    let event: (SubViewEvents) -> Void, Bool, String, etc
    ```
    - Now when you need to call the action from the Sub-View, you just say:
    ```
      .onTapGesture {
        event(.onDelete(Type))
      }
    ```

    - Now in your ParentView you just say what actions these events will trigger.
    ```
    struct ContentView: View {
    @Enviroment(Store.self) private var store
      var body: some View {
    
          SubView(type: Type) { event in
            switch event {
              case .onDelete(let type):
                  //trigger the actual action for deleting
                  store.delete(type)
              case .onMarkFavourite(let type):
                  // trigger the actual action for marking as favourite
                  store.markFavourite(type)
              }
          }
      }
    }
    ```
  

