## What is @AppStorage
- it is an easier way of using UserDefaults in SwiftUI.

### Difference between UserDefaults and @AppStorage: 
UserDefaults ——>


  ![image](https://github.com/John-Mark01/learning-swift/assets/147177515/674cb01e-df2a-4c85-9ba3-96b2100ad176)


@AppStorage ——>


![image](https://github.com/John-Mark01/learning-swift/assets/147177515/7b2b631c-da16-4e54-b32b-b48bfc04139b)



- the main difference is that with @AppStorage **we don't need to set values, and pull values** when needed. We just decalre it at the top of the file.
- also we **don't** need to update it with _.set_, we just modify it like a normal variable.
- The values we put in @AppStorage are **updating automatically**
