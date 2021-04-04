***Settings***
Library     hello.py
***Test Cases***
Deve retornar a mensagem de boas vindas
    ${resultado}        Hello Robot     Rodrigo
    Log To Console      ${resultado}