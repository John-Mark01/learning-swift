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


## Best Practices

1. Whenever you create a property/method, always describe it as __private_.
   * if in time you need to level-up, then do so, but first start with private, and then level-up to filePrivate, internal.
  
