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

#### Important aspect of the ContainerView is that it itself is a View, so it can hold @State, @Enironment, ViewModifiers, or any other SwiftUI feature.

- What we can do with this **Generic View** is design a structure that our app will follow, and then all the content inside of it.


### Syntax and Usage
You can create a Container View following this structure

```
struct ContainerView<Content: View>: View {
    @ViewBuilder let content: () -> Content
    
    var body: some View {
       content()
    }
}

```

- The ```<Content: View>``` part specifies that ContainerView will have some sort of ```Content``` that conforms to ```View```. 'Content' here is a type, so it is defined with a capital letter 'c' - 'Content'.
**This is what will bring the curly braces and create a scope**

- The ```@ViewBuilder let content: () -> Content``` is the captured content within the scope, and it is defined with low letter 'c' - 'content'.

- We can also add parameters to that view, just like ```alignment``` and ```spacing``` on a ```VStack```.
#### It will be best to provie default values, so that you can have more options when initializing the view.

```
struct ContainerView<Content: View>: View {
    var cornerRadius: CGFloat = 8
    @ViewBuilder let content: () -> Content
    
    var body: some View {
        VStack {
            content()
        }
        .cornerRadius(cornerRadius)
    }
}

```
The initializer would look something like this:
```
ContainerView(cornerRadius: CGFloat, content: Content)

ContainerView(cornerRadius: 16) {
    code
}
```

  
### Example: 
* in my app I want to have a widget like appearence for every section, so I need a container that will:
    - hold other views
    - expand as the views grow
    - apply modifiers that every view inside will need
so: 

```
struct SurfaceStack<Content: View>: View {
    // Can be used like a VStack or HStack, but automatically added inside paddings, background, cornerRadius
    let content: () -> Content
    var edgeInsets: EdgeInsets = EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16)
    var cornerRadius: CGFloat = 14
    var backgroundColor: Color = Color.gray
    
    public var body: some View {
     VStack {
        content()
    }
    .padding(edgeInsets)
    .background(backgroundColor)
    .cornerRadius(cornerRadius)
  }
}

```

```
SurfaceStack {
        Image(systemName: "pencil")
            .font(.system(size: 32))
        Text("Hello, world!")
}
```

Now, every single View that is added in the SurfaceStack's scope, will be in a vstack, will have exactly the paddings in between object as i have specified them to be, and this it will be rounded to the corner radius as well.

Now just imagine how many things you can add:
- @Environment
- @State
- Text
- Images
- OtherViews
- Animations
So much more...













