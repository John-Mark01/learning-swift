# MV Architecture - Model -> View 
#### - This is a better way of using SwiftUI for iOS Development
#### - It removes MVVM's complexity, eliminating the unnecessary ViewModels for each view.
#### - With this architecture (MV), every view acts like its own ViewModel, and all of the business logic lies within the Model


## Explanation...
- MVVM uses viewModels to store and change data, but MV stores and uses @Observable classes. They are called AgragateModels and instead of initializing ViewModel in the views, MV passes those AgragateModels as a GLOBAL STATE to your app, via [@Enviroment](). 

#### M - Model:
  1. Entity Models -
  2. AgragateModels (Stores).
    - they use __Bounded Context__:
     * _Bounded Context defines the scope or boundary within which a particular model or concept applies. It encapsulates a specific business domain and its associated             language, rules, and constraints._

![image](https://github.com/user-attachments/assets/4b7ac268-691e-46d7-804e-0a4723c42bb9)


![image](https://github.com/user-attachments/assets/c790be6e-70ef-412e-8c99-80d5a13295aa)












#### V - View:
