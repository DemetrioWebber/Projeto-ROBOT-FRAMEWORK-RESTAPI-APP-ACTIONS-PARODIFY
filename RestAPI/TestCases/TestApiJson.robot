***Settings***
Library     JSONLibrary
Library     os
Library     Collections
Library     RequestsLibrary

***Variables***
${base_url}=    https://restcountries.eu


***Test Cases***
Pegar_informação_estado
    create session      mysession   ${base_url}
    ${response}=    get request     mysession   /rest/v2/alpha/BR

    ${json_object}=     to json      ${response.content}


    #Single data validation
    ${country_name}=    get value from json     ${json_object}      $.name
    log to console      ${country_name[0]}

    should be equal     ${country_name[0]}     Brazil

    #Single data validation in Array
    ${country_borders}  get value from json     ${json_object}      $.borders[0]
    log to console      ${country_borders[0]}

    #Multiple data valdiations in array
    ${multiple_boarders}=   get value from json     ${json_object}      $.borders
    log to console  ${multiple_boarders[0]}

    should contain any      ${multiple_boarders[0]}     ARG     BOL     COL
   # should not contain any      ${multiple_boarders[0]}     abc     VEN