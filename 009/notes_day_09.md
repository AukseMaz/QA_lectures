Require to add this postman scripts into PRE-REQUEST section:

    // Generate a unique username  by appending a timestamp
    const uniqueUsername = "test_user_" + Date.now();
    // Generate a unique password  by appending a timestamp
    const uniquePassword = "psw" + Date.now();

    // create obj for request body
    let requestBody =  {
        "username": uniqueUsername,
        "password": uniquePassword,
        "fullName": "Vardenis Pavardenis",
        "email": "demo@demo.com"
    }

    // add obj into request body
    pm.request.body.raw = JSON.stringify(requestBody)
1st. step: Require to add this postman scripts into PRE-REQUEST section:

    // Generate a unique username  by appending a timestamp
    const uniqueUsername = "test_user_" + Date.now();
    // Generate a unique password  by appending a timestamp
    const uniquePassword = "psw" + Date.now();

    pm.collectionVariables.set("registerLoginUserName", uniqueUsername)
    pm.collectionVariables.set("registerLoginPassword", uniquePassword)

    // Just print in order to check if we got value of variables by name:
    console.log(pm.collectionVariables.get("registerLoginUserName"))
    console.log(pm.collectionVariables.get("registerLoginPassword"))
    
2nd. step: add colleciton variables into request body

    {
        "username": "{{registerLoginUserName}}",
        "password": "{{registerLoginUserName}}",
        "fullName": "Vardenis Pavardenis",
        "email": "demo@deom.com"
    }
Add test script to check if data match between request body and response body:
pm.test("Response has the required fields", function () {
  const responseData = pm.response.json();
  const variableUserName = pm.collectionVariables.get("registerLoginUserName");

    console.log("Variable username: " + variableUserName)

  pm.expect(responseData).to.be.an('object');
  pm.expect(responseData.message).to.exist.and.to.be.a('string');

  pm.expect(responseData.user).to.exist.and.to.be.an('object');
  
  pm.expect(responseData.user.username).to.exist.and.to.be.a('string')
    .and.to.have.lengthOf.at.least(1, "Username should not be empty")
    .to.equal(variableUserName);

  pm.expect(responseData.user.fullName).to.exist.and.to.be.a('string')
    .and.to.have.lengthOf.at.least(1, "Full name should not be empty")
    .to.equal("Vardenis Pavardenis");

  pm.expect(responseData.user.email).to.exist.and.to.be.a('string')
    .and.to.have.lengthOf.at.least(1, "Email should not be empty")
    .to.eq("demo@demo.com");

});

IV. Variables in Postman
V. Rerunnable tests in Postman
