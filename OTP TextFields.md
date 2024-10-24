# How to copy OTP codes from messages 

1. On the textField, you add a modifier, called ``` .textContentType ``` and inside we put ``` .oneTimeCode ```
This will fetch the last message you have in your messages app and will copy it over to your text fields's autoComplete section.

```
SecureField("",text: $textFieldText)
    .keyboardType(.numberPad)
    .textContentType(.oneTimeCode)
```
