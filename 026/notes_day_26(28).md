## Boundary Testing

Boundary testing is a black-box testing technique that software developers often use to check the errors at the boundaries or extreme ends of a given input domain. An input domain comprises all the possible inputs available in a software program. Software developers utilize black-box testing to analyze the behavior of a software program and examine its functionality. The extreme ends in boundary testing might include start to end, lower to upper or minimum to maximum.

### Boundary values

Each partition has minimum and maximum values. Testers check the following for each variable:

Nominal value
Minimum value
Above/below minimum value
Maximum value
Invalid boundary value (for invalid partitions)
Valid boundary value (for valid partitions)

For instance:

Age = 20
Validation:
    [up to 13] - forbidden
    [14-26] - teenager
    [27-60] - adult
    [61 up to] - senior

    forbidden:
    * input 13

    teenager:
    * input 14
    * input 26

    adult:
    * input 27
    * input 60

    senior:
    * input 61

### Pesticide Paradox

In software testing, the Pesticide Paradox occurs when a test suite consistently runs the same tests against the software, yet new defects remain undetected. This paradox arises because the automated tests, which initially caught many bugs, no longer uncover new defects as the software evolves.

## Exercises

https://www.testdome.com/library?page=1&skillArea=78

```
Life period:
https://www.testdome.com/questions/quality-assurance/life-period/117002
```
```
Thermostat:
https://www.testdome.com/questions/quality-assurance/thermostat/116998
```

```
Deposit:
https://www.testdome.com/questions/quality-assurance/deposit-interest/117001
```