# Generic View Containers 
## ```ContainerView<Content: View>: View```

### What is a container view?
- a container view, also known as a **Wraper View** is designed to reduce redundant code, by encapsulating needed logic for multiple views. Or in other words this is just a **Generic View** that holds other views inside of it.
- In SwiftUI there are many views of that kind - VStack, HStack, ZStack, ScrollView, etc. They are easy to spot... just look for a view that has this structure:
```
ContainerView {

}
```
it will encapsulate every other view placed inside of it within it's own scope ```{}```.

- What we can do with this **Generic View** is design a structure that our app will follow, and then all the content inside of it.

### Syntax and Usage

You can create a Container View following this structure

```
struct ContainerView<Content: View>: View {
    @ViewBuilder let content: () -> Content
    
    var body: some View {
       content
    }
}

```

- The ```<Content: View>``` part specifies that ContainerView will have some sort of ```Content``` that conforms to ```View```.
**This is what will bring the curly braces and create a scope**

- The ```@ViewBuilder let content: () -> Content``` is the captured content within the scope, and it is 

  
### Example: 
* in my app I want to have a widget like appearence for every section




