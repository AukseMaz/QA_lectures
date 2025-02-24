## Recover PostgresSQL password

ALTER USER postgres WITH PASSWORD 'your_new_password';

## Attacks

1. SQL injection: 
    it is a code injection technique that might destroy your database. SQL injection is one of the most common web hacking techniques.

2. Packet sniffing (http vs https):
    is a method of detecting and asserting packet data sent over a network. It can be used by administrators for network monitoring and security. However, packet sniffing tools can aslo be used by hackers to spy or steal confidential data.

3. Dictionary attack: 
    a type of brute force attack where an intruder attempts to crack a password-protected security system with a "dictionary list" of common words ans phrases used by business and individuals.

## Hash functions

1. Hash collision:
    is when two distinct pieces of data in a hash table share the same hash value.

2. Password hashing:
    is a multi-step process designed to transform plaintext passwords into secure, fixed-length hashes that are difficult to reverse-engineer.

3. How to stay safe from dictionary attacks:
    1. Strong password
    2. Salt ->

## API-key vs JWT

API key:
    a value provided by code when calling an API to identify and authorise the caller. It is intended to be used programmatically and is often a long string of letters and numbers.

Token (JWT):
    a piece of data that reperesents a user session or specific privileges. Used by individual users for a limited period of time. Contains of three parts:

        1. Header
        2. Payload
        3. Verufy Signiture

    https://jwt.io/

