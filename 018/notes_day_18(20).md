## I. Hooks

[Hooks link](https://docs.cypress.io/app/core-concepts/writing-and-organizing-tests#Hooks)

```js
    before(() => {
    // root-level hook
    // runs once before all tests
    })

    beforeEach(() => {
    // root-level hook
    // runs before every test block
    })

    afterEach(() => {
    // runs after each test block
    })

    after(() => {
    // runs once all tests are done
    })
```



## II. Combinator selectors

Cypress selectors (including xpath):  
https://www.cypress.io/blog/understanding-selectors-in-testing  

1. Child Selector:  
   `cy.get('#myDiv > p');`  
   Selects only direct `<p>` children of `<div id="myDiv">`

2. Descendant Selector (Space ):  
   `cy.get('#myDiv p');`  
   Selects all `<p>` elements inside `<div id="myDiv">`

3. Adjacent Sibling Selector (+):  
   `cy.get('#myDiv + p');`  
   Selects the first `<p>` that comes immediately after `<div id="myDiv">`

4. General Sibling Selector (~):   
   `cy.get('#myDiv ~ p');`  
   Selects all `<p>` siblings that come after `<div id="myDiv">`

5. Combining Multiple Combinators:  
   `cy.get('#myDiv > ul > li + li');`  
   Selects the second `<li>` inside `<ul>` that is a direct child of #myDiv

<br>

## III. Readme

[GitHub markdown doc](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax)

Require to answer core questions:  
1. Description
2. Tech stack or requirements
3. Installation
4. How to run


https://github.com/othneildrew/Best-README-Template  
https://github.com/dotnet/eShop  
https://github.com/aregtech/areg-sdk#readme  


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