
[QA road map](https://roadmap.sh/qa)

## I. Repeat and check homework



<br>

## II. Close APP after tests completion

```json
"scripts": {
    ...
    "start": "node src/server.js",
    "stop": "taskkill /IM node.exe /F || exit 0",
    ...
    "test": "jest",
    "tst:cli": "concurrently \"npm run start\" \"npm run test && npm run stop\"",
    ...
  },
```


<br>

## III. Defects and severities

Defect and Missing Functionality.

Požiūrio taškai:
1. testuotojas
2. programuotojas
3. PO
4. vartotojas

Severity (ISQTB):
1. Critical
2. High
3. Medium
4. Low

Pagrindiniai ir šalutiniai funkcionalumai.
"Workaround"

Critical:
    Pagrindiniai funkcionalumai, smoke & regression testai, positive tests, funkciniai testai.

High:
    Pagrindiniai funkcionalumai, positive tests, funkciniai testai.
    turi "workaround".

Medium
    turi "workaround", bet atlieka vartotojas.
    Dažniausiai kyla iš šalutinių funkcijų, klaidos gaunamos iš negatyvių testų, UI/UX defektai

Low:
    Dažniausiai susiję su UI/UX.


<br>

## IV. Bug lifecycle

1. Title.
   Title turi atsakyti į šiuos klausimus:
    * kas atsitiko
    * kurioje vietoje
    * prie kurių aplinkybių.
  
    E2E pvz.:
        "Amount of 'followers' is missing on the user page when user logged in."

    API pvz.:
        GET /users
        resp code 200
        in the body error "Internal Server error"
        
        "Internal Server error with 200 upon sending GET '/users'"

2. Steps to reproduce (Description).
   
    E2E pvz.:
        Pre-requisites:
        * Existing account with followers

        Steps to reproduce:
        * Navigate to User page
        * Observe amount of followers 

        Expected: Amount of followers is visible
        Actual: Amount of followers is not visible

    API pvz.:
        Pre-requisites:
        * Existing few users

        Steps to reproduce:
        * Send GET request to /users
        * Observe response body

        Expected: list of users
        Actual: response body message "Internal Server error" with status code 200

3. Environment:
    * Chrome version, pvz.: Version 131.0.6778.205 (Official Build) (x86_64)
    * QA environment
    * Postman
    * OS version...

4. Build version
    * Product version where a defect was identified.

5. Severity
    * E2E: low

One problem = one registered defect.
Cosmetic defects may be registered as one.

![Bug Lifecycle](/027/images/bug_lifecycle.png)


<br>
