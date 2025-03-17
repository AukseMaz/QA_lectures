
[QA road map](https://roadmap.sh/qa)

## I. Repeat and check homework

<br>

## II. Vibe coding

Vibe coding is an AI-dependent computer programming practice where a person describes a problem in a few sentences as a prompt to a large language model (LLM) tuned for coding. The LLM generates software, freeing the programmer from having to write and debug the underlying code.

AI promt:
```
Attached project package.json file and require following solutions: 
1. How to remove libraries 'jest' and 'supertest' from dependencies and install into dependencies dev
2. How to runt few scripts like 'start' and 'test' by one script.
```

```bash
    npm uninstall jest supertest
    npm install --save-dev jest supertest

    npm install --save-dev concurrently
```

Runs app, test and close app when all tests ar completed:
```json
"scripts": {
    ...
    "tst:cli": "concurrently \"npm run start\" \"npm run test\"",
    "tst:adv": "concurrently --kill-others --names \"SERVER,TEST\" --prefix-colors \"bgBlue.bold,bgGreen.bold\" \"npm run start\" \"npm run test\""
  },
```


<br>

## III.  AAA testing framework

https://semaphore.io/blog/aaa-pattern-test-automation  
https://github.com/goldbergyoni/javascript-testing-best-practices?tab=readme-ov-file#section-1-the-test-anatomy-1  

<br>

## IV. Unit and integration testing

AI prompt:
```
Attached file of react app, file name 'App.jsx'. This project created and managed with 'Vit' tool.
1. Write unit test for functions only located in App.jsx file. Do not test UI.
2. Provide best practice and file structure of this project in order to understand where to add code of unit tests.
3. How to run unit test.
```

Install vitest dependencies:  
```bash
    npm install --save-dev vitest
```

Unit test perform tests for function `calculateWinner` wherefore require to export in App.jsx file:  

```javascript
// before
    const calculateWinner = (board) => { ...

// after
    export const calculateWinner = (board) => {...
```

Scripts in `package.json`:
```json
"scripts": {
    "unit": "concurrently \"npm run dev\" \"npx wait-on http://localhost:5173 && vitest\"",
    "unit:watch": "concurrently \"npm run dev\" \"npx wait-on http://localhost:5173 && vitest --watch\""
}
```



<br>