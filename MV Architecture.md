# MV Architecture - Model -> View 
#### - This is a better way of using SwiftUI for iOS Development
#### - It removes MVVM's complexity, eliminating the unnecessary ViewModels for each view.
#### - With this architecture (MV), every view acts like its own ViewModel, and all of the business logic lies within the Model


## Explanation...
- MVVM uses viewModels to store and change data, but MV stores and uses @Observable classes. They are called AgragateModels and instead of initializing ViewModel in the views, MV passes those AgragateModels as a GLOBAL STATE to your app, via [@Enviroment](). 

#### M - Model:
  1. Entity Models - User, Order, Coffee, Person.. any object that your app will use.
  2. AgragateModels (Stores).
    - they use __Bounded Context__:
     * _Bounded Context defines the scope or boundary within which a particular model or concept applies. It encapsulates a specific business domain and its associated             language, rules, and constraints._

![image](https://github.com/user-attachments/assets/4b7ac268-691e-46d7-804e-0a4723c42bb9)


![image](https://github.com/user-attachments/assets/c790be6e-70ef-412e-8c99-80d5a13295aa)

  - An AngragateModel, a Bounded Context, or our Store (the same thing) essentially looks like the image below.
  - They are a Global state of properties and methods that can be accessed from any view, that BOUNDS to that particular context.
  - So in this Store, we store an array of those objects, maybe helper functions like sort, filter, CRUD, etc.

   A Store/BoundedContext/AgragateModel is described like this:
      * It's an @Observable class
      * It injects a network layer(if there is one) as a Dependency
      * holds data (array of orders in our case)
      * and has functions
  This store is then passed to View Hierarchy as an Environment. And can be used in any view that we decide to bound to. 
  A view that is bound to his CoffeeStore context will use the data for Orders. If the View is for Snacks, then it shouldn't be bound to CoffeeStore, but instead should    have its own SnacksStore.

<img width="1799" alt="image" src="https://github.com/user-attachments/assets/1ec04b06-380b-4f77-881f-e33eb51847a0">

    ex: we might have a CoffeOrderView. This view will use @Enviroment(CoffeeStore()). This way it can










#### V - View:
