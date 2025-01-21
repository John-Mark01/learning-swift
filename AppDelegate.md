# AppDelegate in SwiftUI 
- borrowed from UIKit we can make a delegate class, that can operate whe the app is launched

```  
class AppDelegate: NSObject, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
      // this will be executed everytime the app launches
    }

    // methods and variables here.
}
```
