# Defer Keyword
### Whatever is placed inside defer's scope it's GUARANTEED that will run, WHATEVER the outcome 

#### Example: 

<img width="857" alt="image" src="https://github.com/user-attachments/assets/2a559ea9-b9e9-4c00-b0de-914592e6c739">

### Explanation: 
With that defer call in place, ``` closeFile() ``` will be called no matter which of the guards are triggered, or even if none of them trigger and the method completes normally.

That's what I mean when I say that deferred work will always take place: if you return from a method at the end or part way through, or if you exit a method by throwing an error, your deferred work will take place.

This makes it perfect for ensuring code is cleaned up under all conditions, and is similar to try/finally in other languages.
#### defer is best used for making sure that you clean resource, stop mediaPlayers, of in the example's case, close the current file.
