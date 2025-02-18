# API USER-MANAGEMENT structure:

      TS_01. Register new user
         TC_1.1.1. Positive register new user
         TC_1.1.2. Get user details - register
            (no test script require, only responce code)
         TC_1.2. Register new user - no username  
         TC_1.3. Register new user - no password   
         TC_1.4. Register new user - no fullname  
         TC_1.4. Register new user - no email 
         TC_1.5. Register new user - empty username  
         TC_1.6. Register new user - empty password   
         TC_1.7. Register new user - empty fullname  
         TC_1.8. Register new user - empty email 
         TC_1.9. Register new user - empty all parameters 

      TS_02. Login (register and login)
         TC_2.1.1. Register new user - login
            (no tests scripts require, only responce code)
         TC_2.1.2. Positive login
         TC_2.2. Negative login - no username
         TC_2.3. Negative login - no password
         TC_2.4. Negative login - empty username
         TC_2.5. Negative login - empty password

      TS_03. Get users
         <!-- TC_3.1. Positive Get all users empty ? -->
         TC_3.1.1. Create new user - Get
            (no tests scripts require, only responce code)
         TC_3.1.2. Positive Get all users
         TC_3.2. Positive Get user details 
            remark: user details form TC_3.1.1
         TC_3.3. Negative Get not-existing user details

      TS_04. Logout (register, login and logout)
         TC_4.1.1. Create new user - logout
            (no tests scripts require, only responce code)
         TC_4.1.2. Login - logout
            (no tests scripts require, only responce code)
         TC_4.1.3. Positive logout

      TS_05. Delete (Register and delete user)
         TC_6.1.1. Register new user - delete
            (no tests scripts require, only responce code)
         TC_6.1.2. Positive Delete new user
         TC_6.1.3. Get user details - delete
            (no tests scripts require, only responce code)
         TC_6.2. Delete non-existing user

## II. Run scenarios (Collections)

<br>

## III. Newman tool

[Newman documentation](https://learning.postman.com/docs/collections/using-newman-cli/installing-running-newman/)  
[npm newman installation](https://www.npmjs.com/package/newman)  

Install n   newman run UsserManagement.postman_collection.jsonewman:  
```cmd
   npm install -g newman
```
Run tests with newman
```cmd
   newman run UsserManagement.postman_collection.json
```

Run tests with newman and generate reports
```cmd
   newman run UsserManagement.postman_collection.json -r cli,json
```

Install htmlextra: 

   Globaly:   
```cmd
 
   npm install -g newman-reporter-htmlextra
```
   Localy:  
```cmd

   npm install newman-reporter-htmlextra
```

Run tests with newman and generate html repor:

```cmd
   newman run UsserManagement.postman_collection.json -r htmlextra
```
or  
```cmd
   newman run UsserManagement.postman_collection.json -r htmlextra --reporter-htmlextra-export report.html
```

Remove and Reinstall Everything:  
```cmd
   npm uninstall -g newman newman-reporter-htmlextra
   npm uninstall newman newman-reporter-htmlextra
   npm cache clean --force
   npm install -g newman newman-reporter-htmlextra
   npm install newman-reporter-htmlextra
```

Then, retry:
```cmd
   npx newman run UsserManagement.postman_collection.json -r htmlextra
```


<br>

## IV. Install PostgreSQL

Postgress download:  
https://www.postgresql.org/download/  
https://www.pgadmin.org/download/pgadmin-4-windows/