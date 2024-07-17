# How to Query through a list/array in SwiftUI

- in swiftUI we have a dedicated property, that you can add to your view, that makes your list/array _searchable_!
- **.searchable()** takes a couple of parameters. The most common, simple and easy one is _.searchable(text: Binding<String>, placement: SearchFieldPlacement, promt: "Text")
    * text - this should be a Binding String variable
    * placement - this are predefined placements, that are accssesed through **.** ex: .automatic, .navigationBarDrawer(displayMode:), .sidebar, .toolbar
    * promt - this is a placeholder text that will be presented at all time inside of the searchbar.
  
### How does it work?
- In order to implement _.searchable_, your view need to in a **NavigationStack**
- Your view takes _content_, which is represented in a list. In this content (or in this array) your DataType should confront to __Identifiable__.
- You create a **@State** variable that stores what the user types in the searchBar.
- That variable is then being bound to the .searchable(text: Binding<String>) property
