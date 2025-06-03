# Solid principles.
## Implementation in iOS Dev (Swift & SwiftUI)


### S - Single Responsablity (SRP) 
**class or module should have only one reason to change. In other words, a class should have only one responsibility or one job.**
- a reason for change is any reason - now, or in the future. 
- so the only way you can predict what is going to happen, or what is going to change is through ```abstraction``` — [OOP Principles]().
- the way we ```abstraction``` to our class or structure is through Protocols, (Intrefafces for other languages).

#### Code example (BAD CODE): 
```
// A simple asynchronous function simulating a payment process
func pay(using endpoint: String) async throws -> String {
    // Step 1: Convert the input string to a URL
    guard let url = URL(string: endpoint) else {
        throw URLError(.badURL)
    }

    // Step 2: Create a URL request and perform the fetch
    let (data, _) = try await URLSession.shared.data(from: url)

    // Step 3: Parse the response (assuming it's JSON for this example)
    if let json = try? JSONSerialization.jsonObject(with: data, options: []),
       let dictionary = json as? [String: Any],
       let result = dictionary["paymentStatus"] as? String {
        // Return a string from the response, e.g., the payment status
        return "Payment Status: \(result)"
    } else {
        // Handle cases where the expected key is missing or the format is incorrect
        return "Failed to fetch payment status"
    }
}
```








### Articles for the topic
- The best for iOS [go](https://medium.com/@qquang269/solid-in-ios-the-principles-youve-heard-of-but-probably-don-t-fully-understand-7a0e910c5a2a)

