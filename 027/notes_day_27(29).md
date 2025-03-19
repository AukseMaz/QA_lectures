
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
    Dažniausiai kyla iš šalutinių funkcijų, klaidos gaunamos iš negatyviš testš, UI/UX defektai

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

2. Steps to reproduce.
   
    E2E pvz.:
        Pre-requisites:
        * existing account with followers

        Steps to reproduce:
        * Navigate to User page
        * Observe amount of followers 

        Expected: Amount of followers is visible
        Actual: Amount of followers is not visible

    API pvz.:
        Pre-requisites:

        Steps to reproduce:

        Expected:
        Actual:

3. Environment
4. Build version
5. Severity


<br>
