I. Postman and Express.js practise

API breaking change refers to a modification in an API that causes previously working client applications (or integration) to break or malfunction due to incompatibility with the new API verison. These cjanges typically require client application to be uploaded befoe they can continue functioning correctly.

express.js

Promt to AI:
Create a REST API with express, where I can

    pm.test(
        "Status code is 200", 
        function () {
            pm.response.to.have.status(200);
        }
    );