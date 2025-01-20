### Routing in SwiftUi with enums and ObservedObject

## Create a Router class
   
![image](https://github.com/user-attachments/assets/cb84c991-c0d2-4aca-9519-80e52b8759a7)

1. Create an enum that will store refrencess to your views.
- it should be conforming to _Codable_ and _Hashable_

2. Create a @Published var path: NavigationPath = NavigationPath()
3. Create a private static variable stack: [your enumTypeName] = [.value]
4. Create a @ViewBuilder func view(for route: YourEnumName) -> some View
   * inside the scope of that function create a switch statement that iterates over YourEnum.
   * for each enum value, give the View that represents it.
5. Create functions like (navigate to, popBackStack, etc.)

## Create a RouterView

```
struct RouterView<Content: View>: View {
    @EnvironmentObject var router: Router
    // Our root view content
    private let content: Content

    init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        NavigationStack(path: $router.path) {
            content
                .navigationDestination(for: Router.YOURENUM.self) { route in
                    router.view(for: route)
                }
        }
        .environmentObject(router)
    }
}
```

This view will be paced in the main Window Group in YouAppApp file.

## Methods for your Router. 
- you will need a couple methods:
  1. navigate(to: View) -> Navigate to a new view
  2. navigateBack() -> Remove the last view from the stack and go back
  3. navigateBack(count: Int) -> Remove the last INT view from the stack
  4. navigateAndClearBackStack(_ : View) -> Navigate to a new view & remove all previous views
  5. navigateToRoot() -> Removes all of the views and goes back to the root
 
### navigate(to view: View)
```
func navigate(to: View) {
   Router.stack.append(view)
   path.append(view)
}
```
 
### navigateBack() aka popBackStack()
```
func navigateBack() {
   guard Router.stack.isEmpty == false else { return }
   Router.stack.removeLast()
   path.removeLast()
}
```
### navigateBack() aka popBackStack()
```
func navigateBack() {
   guard Router.stack.isEmpty == false else { return }
   Router.stack.removeLast()
   path.removeLast()
}
```
 
### navigateAndClearBackStack(_ : View)
```
func navigateAndClearBackStack(_ view: View) {

   if let index = Router.stack.lastIndex(of: view) {

      let removeCount = Router.stack.count - index - 1
      for _ in 0..<removeCount {
         path.removeLast()
      }
      Router.stack = Array(Router.stack.prefix(index + 1))
   } else {
      Router.stack.append(view)
      path.append(view)
   }
}
```

### navigateToRoot() aka popToRoot()
```
func navigateToRoot() {
   path.removeAll()
   path.removeLast(path.count)
}
```
