## Testing Levels

1. Unit testing: sistemos testuojamos per kodą
2. Integration testing: sistemos testuojamos per kodą
3. System testing: per Postman
4. User Acceptance Testing(UAT): 
    UAT is the final testing phase before the software goes live. It is conducted after the application has passed all previous testing levels (unit testing, integration testing, system testing). The primary goal of UAT is to validate that the system behaves as expected in the real-world environment and fulfills the business needs.

    a. Alfa testing
    b. Beta testing

End-to-End Testing (E2E) is a testing methodology used to evaluate the complete flow of an application from start to finish. The goal is to simulate real user scenarios and validate the system’s integration and data flow across various components.

- Production companies
- Project companies

## Integration vs System testing

![Integration vs System Diagram](/images/Integration_vs_System.png)

Integration testing -> performed by developers
System testing  -> performed by QA specialist

## Unit testing and Mocking Concept

https://aws.amazon.com/what-is/unit-testing/

Unite testing - is the process where you test the ssmallest piece of code that can be logically isolated in a software application. In this case - function.

Mocking concept - is a technique used in unit testing where dependencies of a module are replaced with fake implementations(mocks) to isolate the module being tested. This helps in testing the module independently without relying on external factors like database, APIs, or actual services.

Why use Mocking?

- Isolation - ensures we test only the unit in question, not external dependencies.
- Speed - avoids slow operations like database access or netwprk calls.
- Control - Lets us simulate different scenarios (e.g., errors, specific returns).
- Reliability - eliminates unpredictable behavior from real dependencies.

## ChatGPT Prompt for the project:

Create a simple express API in js with some logic for it that contains few services like order and inventory.
Write unit and integration tests for this app.
Unit test should test classes not the whole application and use mocking.
Write file structure of this app.