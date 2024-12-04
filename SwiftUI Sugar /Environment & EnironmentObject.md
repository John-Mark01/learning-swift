# Environment & EnironmentObject

## What is Environment & EnironmentObject?
  - @EnvironmentObject was used up until iOS 17, after that with the addition of @Observable macro and the Observation protocol, it has been changed to @Environment
    #### So what is @Environment?
    - @Environment is a way to create, use and maintain global state in a SwiftUI Application. An @Environment is an object (not EnvironmentObject) that can be any @Observable class.
    - It works almost like a Singlelton, but insted of calling a singleton everythime like ``` Singleton.shared.value ``` you can just access your ``` @Environment ``` value or object (checkout [MV Architecture](https://github.com/John-Mark01/learning-swift/blob/main/Architecture/MV%20Architecture.md)
