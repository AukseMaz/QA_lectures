
## I. Homework

1. Register:
1.1.1 Register new user all parameters
        notes: 
            user might be created randomly 
            add values into collection values

1.1.2 Login (Additional)
        notes:
            user collection variables!

1.2. Register new user mandatory parameters
        notes: 
            user might be created randomly 
            add values into collection values

1.3. Register - username not provided
        notes:
            Create random user
            user collection variables

1.4. Register - username empty
1.5. Register - username duplicated
1.6. Register - username length exceeds 50
1.7. Register - email not provided
1.8. Register - email empty
1.9. Register - email duplicated
1.10. Register - email length exceeds 100
1.11. Register - password not provided
1.12. Register - password empty
1.13. Register - title length exceeds 50
1.14. Register - data not provided
1.15. Register - data empty
1.16. Delete registered user (additional, ?)

1. Login:
2.1. Login with valid data


Save token into collection variables, add script into Post-response section:

```javascript
    const token = pm.response.json().token;
    pm.collectionVariables.set("token", token)
```

