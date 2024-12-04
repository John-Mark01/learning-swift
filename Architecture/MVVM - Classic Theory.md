# MVVM Pattern - The Theory

## Theory

**M** - Model:

* The **Model** is the file containing ALL of an object's _Business Logic_. 
* Another name for the model will be a _Domain Object_ or the _brain_ of the application.
* The **Model** is on whom we write _Unit Tests_.
* Example:
  - Let's say we build an app for online shopping.
  - We would have an object named _Order_. This object will contain: 
      * **properties:** like - name, user, price, product, quantity
      * **methods:** like - updateOrder(), applyDiscount(), convertCurrency(), etc.
  
   **The logic behind every order in our application is written in the _Order Model_.**


**V** - View
* The **View** is the UI we visually see and interact with on our device's screen.
* The view typically does NOT contain any logic on updating itself. This is dedicated to the *ViewModel*.


**VM** - ViewModel
* The **ViewModel's* job is to get the data from the __Model__ and deliver it to the __View__.
* It's basic function is a *Provider*. It gets a piece of data and gives it to the UI.

<img width="846" alt="image" src="https://github.com/user-attachments/assets/74c08e21-78af-4cbb-8632-8d1e164f966d">

<img width="1026" alt="image" src="https://github.com/user-attachments/assets/47f03e07-884c-4979-b82c-2488df9d0eda">


## Implementation

1. In our View we create a *let* constant called _YourView_**ViewModel** after that we make an _init_ where we initialize our view with the **ViewModel**
2. In our Root, @main, or navigation Ruter(Main Window Group) we fill the parameter for our **ViewModel** and initialize it there.

## Example

 1. For every View you have in your application, you designate its own ViewModel file.

<img width="1552" alt="image" src="https://github.com/user-attachments/assets/bb1445a9-c004-4dbc-89d2-5b4b7cf0b10c">


