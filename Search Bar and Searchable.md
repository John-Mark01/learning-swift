# How to Query through a list/array in SwiftUI

- in swiftUI we have a dedicated property, that you can add to your view, that makes your list/array _searchable_!
- **.searchable()** takes a couple of parameters. The most common, simple and easy one is _.searchable(text: Binding<String>, placement: SearchFieldPlacement, promt: "Text")
    * **text** - this should be a Binding String variable
    * **placemen**t - this are predefined placements, that are accssesed through **.** ex: .automatic, .navigationBarDrawer(displayMode:), .sidebar, .toolbar
    * **promt** - this is a placeholder text that will be presented at all time inside of the searchbar.
  
### How does it work?
1. In order to implement _.searchable_, your view need to in a **NavigationStack**
2. Your view takes _content_, which is represented in a list or array that needs to be either @Published, @ObservedObject, or @State. In this content (or in this array) your DataType should confront to __Identifiable__.
3. 
   ![image](https://github.com/user-attachments/assets/072a5ec4-15eb-4bbb-94c6-b9aec8f147dd)
   ![image](https://github.com/user-attachments/assets/7f31d1aa-27f1-4dc0-8c58-6337110e19da)

   
 5. You create a **@State** variable that stores what the user types in the searchBar.
    **This should have a default value of empty string - ""**
    This variable changes everytime that the user types in the search-bar, because it is bound to the .searchable modifier.
   ![image](https://github.com/user-attachments/assets/4c368300-7498-4b7c-80d1-83f99734bbb3)

6. That variable is then being bound to the .searchable(text: Binding<String>) property
   ![image](https://github.com/user-attachments/assets/9a1b5e9a-a0a3-499d-a486-aa7cc2874fef)

7. Then you have to create a computed property that filters your list/array - filteredArray.
   In here you create your logic for filtration, based on your @state variable.
   
   ![image](https://github.com/user-attachments/assets/4f56be3e-9686-49dd-9707-2fd1075f6162)
   
  **NOTE:**
   * We are checking if the @State variable is empty, if it is, that means that user hasn't used the search-bar -> in this case, we return the original array.
   * If the @State variable ISN'T empty, then we filter the array, and return the new queried data. All of this happens symontaniossly.
6. After those steps, you are DONE!
   All that's left to be done is to exchange your original list/array with the new _filtered_ array.

![image](https://github.com/user-attachments/assets/05e5b7b5-350c-46e7-8ea2-0a5d56eaced9)
