
[QA road map](https://roadmap.sh/qa)

## I. Docker installation

Docker for Windows  
https://docs.docker.com/desktop/setup/install/windows-install/  

Docker for Mac  
https://docs.docker.com/desktop/setup/install/mac-install/


BIOS F12, F2
https://graphicshub.medium.com/how-to-enable-virtualization-in-windows-10-without-bios-89990c603f33 

WSL stands for Windows Subsystem for Linux

Virtual box:  
https://www.oracle.com/virtualization/technologies/vm/downloads/virtualbox-downloads.html 

How to check my computer system:
Enter 'System information' into toolbar search input.

WSL installation:  
https://learn.microsoft.com/en-us/windows/wsl/install  

Docker hub:  
https://hub.docker.com/

https://docs.docker.com/desktop/features/wsl/  

https://docs.chocolatey.org/en-us/choco/commands/  

Windows install by cli with Choco:
```
    choco install docker-desktop
```

Windows install by cli with Winget:
```
    winget install -e --id Docker.DockerDesktop
```

Check if docker is installed:
```
    docker -v
```

## II. XPath selector

Open devtools and active XPath search input:

- CTRL + F (for Windows)
- CMD + F (for Mac)

'/' - pirmas tag lygmuo  
'//' - visi įmanomi tagai visuose lygiuose  

'*' - visi tag'ų pavadinimai  
Pvz.:  
```
    /*
    //*
    //header/div[1]
    //header/div[2]
    (//div)[261]

    //div[@id='topNoticeAlert']
    //div[@class='alert alert-purple alert-dismissible alert-dismissible-cent']
```

Kadangi toks ilgas class pavadinimas yra labai nepatogus paieškai, naudojame XPath f-ją:
```
    contains(param01,parm02)  
    ex: contains(@class,'alert')  
```
Pvz.:
```
    //div[contains(@class,'alert')]
    (//div[contains(@class,'alert')])[2]
```
Pakylame vienu lygiu aukščiau:
```
    //*[@id='exampleRadios1']/../label
```
Pasiimu label su f-ja text:
```
    text() = "some text here"
```
Pvz.:
```
    //label[contains(text(),'Collect')]
    //*[text()='First name']
```

[Cypress Selectors](https://www.cypress.io/blog/understanding-selectors-in-testing)

Install XPath in Cypress: 
```powershell
    npm install -D cypress-xpath
```

Setup support file in '/support/e2e.js' (just paste inside file):
```js
    require('cypress-xpath');
```

Cypress code example:
```js
cy.xpath('//input[@data-test="username"]').type('standard_user');
```

[XPath Syntax](https://www.w3schools.com/xml/xpath_syntax.asp)  
[XPath Intro](https://www.w3schools.com/xml/xpath_intro.asp)  
[XPath CheatSheets](https://devhints.io/xpath)







