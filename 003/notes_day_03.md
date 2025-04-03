## I. Front-End (FE) vs Back-End (BE)

    FE - the processes of adding functionality to graphical user interface elements to create web experiences. Focus on how websites and applications look. Languages - CSS, HTML, JavaScript. Technologies - Code editors (VS Code), Version control software (Git), Frontend Frameworks (React).

    BE - the proceses of creating the logic, databases and data structures that power web experiences. Focus - How websites and applications work. Languages - Python, PhP, Ruby on Rails. Technologies - Servers, security protocols, backend frameworks.

Client and Server architecture
Client: desktop PC, notebook, tablet, mobile phone

Interface: UI (user interface), API (Application Programming Interface), CLI (Command Line Interface)

## II. REST  API (Representational State Transfer Application Programming Interface) is a web service that allows systems to communicate over the internet using standard HTTP methods.

HTTP methods (CRUD operations): 

    GET -> Retrieve data (e.g., GET/users to fetch all users)
    POST -> Create a new resource (e.g., POST/users to add a new user or for authentication)
    PUT -> Update an existing resource (e.g., PUT/users/123 to update user 123)
    DELETE -> Remove a resource (e.g., DELETE/users/123 to delete user 123)
    PATCH -> 

    CRUD - create, read, update, delete

    HTTP protocol - Transfer text, video, audio

    Transport Layer is responsible for end-to-end communication between devices. It ensures data is delivered correctly, in order, and efficiently. 

        TCP (Transmission Control Protocol) - is a connection-oriented protocol that ensures reliable data transmission between devices. It establishes a connection before data transfer and quarantees that all data packets arrive in order and without errors.

        UDP (User Datagram Protocol) - is a connectionless protocol that focuses on fast data transmission without guarantees of delivery, order, or error checking. It sends data without establishing a connection and doe not wait for acknowledgments.

    HTTPS (HyperText Transfer Protocol Secure) is the secure version of HTTP, used for transmitting data over the web with encryption. It protects communication between a user's browser and a website by preventing eavesdropping, data tampering, and attacks.

    Request/Response messages:

        1. Starting line
        2. header
        3. body
            
    URL

    HEADER (meta data):

        Cookies are small data files stored in a user's browser to track and manage session information.
        API key is a unique identifier used to authenticate and authorize requests between a client (e.g., a website, app, or service) and an API (Application Programming Interface).
        connection...

    BODY:

        JSON data, XML...
        {
            "userName": "some name",
            "password": "***"
        }

    HTTP response/status code: 

        100 - 199 (informational responses), 
        200 - 299 (success responses), 
        300 - 399 (re-direction messages), 
        400 - 499 (client error response), 
        500 - 599 (server error response)

        > REQUEST:
            https://jsonplaceholder.typicode.com/users
            GET

        Header:
            empty
        Body: 
            REST requirements on GET method no JSON data

        > RESPONSE:
            Response code: 200
        Header:
            some meta data
            application/json; utf8
        Body: 
            JSON data

    URL: base url + endpoint -> https://newsapi.org/v2/everything

    NEW API:

        base url -> https://newsapi.org/
        endpoint -> /v2/everything
    
    Link: https://jsonplaceholder.typicode.com/

3. Postman
https://www.postman.com/