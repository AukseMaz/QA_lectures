## I. Homework

<br>

## II. E2E tests vs integration tests

E2E - tests the entire application, simulating real-world user scenarios from start to finish
Integration testing - focuses on verifying the interaction between integrated modules, components, or services.

Microservices vs. Monolith.

Writing and Organizing Tests:
https://docs.cypress.io/app/core-concepts/writing-and-organizing-tests

AAA testing pattern:  
    https://semaphoreci.com/blog/aaa-pattern-test-automation  

Cypress test isolation  
https://docs.cypress.io/app/core-concepts/test-isolation  



<br>

## III. Get vs contains in cypress

https://docs.cypress.io/app/core-concepts/best-practices  

Get function:  
https://docs.cypress.io/api/commands/get 

<br>

## IV. Actions in cypress: type and click.

Type function:  
https://docs.cypress.io/api/commands/type  


Click function:
https://docs.cypress.io/api/commands/click

<br>



## Run demo.html with node.js http server.  
Navigate where file is located and run this command:
```cmd
    <!-- run server without installing -->
    <!-- Might ask that need to install the following packages:
    http-server@14.1.1 -->

    npx http-server -p 8080

    <!-- run server before installing globally -->
    npm install -g http-server
    http-server -p 8080
```
Html file is accessible using `http://localhost:8080/`  
Ex.: http://localhost:8080/demo.html  