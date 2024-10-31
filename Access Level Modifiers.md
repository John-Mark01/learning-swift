# Swift's Access Level Modifiers
- theese in all programing languages are something like clearance toa venue. Or maybe like a top secret files.
  #### For most of development you will use Private, FilePrivate, Internal.
- Swift has **5** access levels, that follows:
### 1. Private
  - When created a property/method with a private modifier, this property/method is limited to be accessed only inside the __SCOPE__ of which they are created at. 
  - private properties/methods are the most limited of all Access Modifiers

**Advantages:**
-  when you are in private, this means that you CAN'T accidentally modify this property/method
- it can only be modified by the class that needs to.
    
### 2. FilePrivate
  - Property/Method is only accessable within the __FILE__ that is created.
  - you can't access this property/method from another file. It is only global for the file that is in.
### 3. Internal - default for all of swift's properies and method
  - **If you don't add ANY access modifier (public, private, etc.) all of the properties will be marked as INTERNAL by default**
  - Property/methods are accesable anywhere within your current app module.
    
![image](https://github.com/user-attachments/assets/817ebd55-f5db-40d6-a4d0-74872b61ec16)

### 4. Public 
  - Whatever is marked as public (this could be a struct, class, property, method, etc.), is accessible between all modules in the project.
  - This is best used best, if you are going to create Frameworks, API's, SDK's, Libraries, etc.

### 5. Open
  - least restrictive access level. It is like Public+.
  - it means that it can be accesed through other modules, but also means that all of your classes can be Sub-classed and overriten.


<img width="736" alt="image" src="https://github.com/user-attachments/assets/962cd637-861e-4100-9833-a6e43d1d02e3">

#### —————— [Apple Documentation](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/accesscontrol/#Modules-Source-Files-and-Packages) ——————


## Best Practices

1. Whenever you create a property/method, always describe it as __private_.
   * if in time you need to level-up, then do so, but first start with private, and then level-up to filePrivate, internal.
  

### Notes
  * **Module**:
 - A module is a single unit of code distribution — a framework or application that’s built and shipped as a single unit and that can be imported by another module with Swift’s import keyword.
  Each build target (such as an app bundle or framework) in Xcode is treated as a separate module in Swift. If you group together aspects of your app’s code as a stand-alone framework —          perhaps to encapsulate and reuse that code across multiple applications — then everything you define within that framework will be part of a separate module when it’s imported and used         within an app, or when it’s used within another framework.

  * **Source File**:
 - A source file is a single Swift source code file within a module (in effect, a single file within an app or framework). Although it’s common to define individual types in separate source       files, a single source file can contain definitions for multiple types, functions, and so on.

  * **Package:**:
 - A package is a group of modules that you develop as a unit. You define the modules that form a package as part of configuring the build system you’re using, not as part of your Swift           source code. For example, if you use Swift Package Manager to build your code, you define a package in your Package.swift file using APIs from the PackageDescription module, and if you use     Xcode, you specify the package name in the Package Access Identifier build setting.
