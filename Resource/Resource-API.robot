*** Settings ***

Documentation     https://superheroapi.com/
Library           Collections
Library           ExtendedRequestsLibrary

*** Variable ***

${URL}           https://www.superheroapi.com/api.php/3045712542120919

*** Keywords ***

obtive permissão junto ao J.A.R.V.I.S.
    Create Session   label=J.A.R.V.I.S.    base_url=https://www.superheroapi.com/api.php/3045712542120919

procuro pelos dados secretos do homem de ferro
    ${INFO_HERO}     Get Request  label=J.A.R.V.I.S.        uri=/346
    Should Be Equal As Strings    ${INFO_HERO.status_code}  200
    Set Test Variable             ${INFO_HERO}              ${INFO_HERO.json()}

procuro pelos dados secretos do Deadpool
    ${DEADPOOL}     Get Request   label=J.A.R.V.I.S.       uri=/213
    Should Be Equal As Strings    ${DEADPOOL.status_code}  200
    Log                           ${DEADPOOL.json()['powerstats']}
    Set Test Variable             ${DEADPOOL_PODERES}      ${DEADPOOL.json()['powerstats']}

procuro pelos dados secretos do Coringa
    ${CORINGA}     Get Request    label=J.A.R.V.I.S.      uri=/370
    Should Be Equal As Strings    ${CORINGA.status_code}  200
    Log                           ${CORINGA.json()['powerstats']}
    Set Test Variable             ${CORINGA_PODERES}      ${CORINGA.json()['powerstats']}

no response o atributo "${ATRIBUTO}" está presente
    Dictionary Should Contain key     ${INFO_HERO}        ${ATRIBUTO}
    #contem o atributo Name, sem verificaçao do conteudo

o conteúdo apresentado no atributo Full-name é "${NOME}"
    Dictionary Should Contain Item    ${INFO_HERO['biography']}   full-name     Tony Stark

o nível de inteligencia encontrada é "${INTELIGENCIA}"
    Should Be Equal As Strings        ${INFO_HERO['powerstats']['intelligence']}   ${INTELIGENCIA}

o seus aliados são "${POSICAO_0}", "${POSICAO_3}", "${POSICAO_1}"
    Log   ${INFO_HERO['biography']['aliases']}
    List Should Contain Value         ${INFO_HERO['biography']['aliases']}      ${POSICAO_0}
    List Should Contain Value         ${INFO_HERO['biography']['aliases']}      ${POSICAO_1}
    List Should Contain Value         ${INFO_HERO['biography']['aliases'][3]}   ${POSICAO_3}
    #verificaçao de valor em lista, especificando posiçao ou nao

deve retornar que o "CORINGA" é o mais inteligente
    Log  ${DEADPOOL_PODERES['intelligence']}
    Log  ${CORINGA_PODERES['intelligence']}
    ${VERDADE}   =  Set Variable       Deadpool é mais inteligente que o Coringa
    ${FALSO}     =  Set Variable       Coringa é mais inteligente que o Deadpool
    ${RESULTADO} =  Set variable if    ${DEADPOOL_PODERES['intelligence']}>${CORINGA_PODERES['intelligence']}  ${VERDADE}  ${FALSO}
    Log To Console    ${RESULTADO}

descubro quem é o mais forte
    Log  ${DEADPOOL_PODERES['strength']}
    Log  ${CORINGA_PODERES['strength']}
    ${VERDADE}   =    Set Variable       Deadpool é mais forte que o Coringa
    ${FALSO}     =    Set Variable       Coringa é mais forte que o Deadpool
    ${RESULTADO} =    Set variable if    ${DEADPOOL_PODERES['strength']}>${CORINGA_PODERES['strength']}  ${VERDADE}  ${FALSO}
    Log To Console    ${RESULTADO}


descubro quem é o mais rápido
    Log  ${DEADPOOL_PODERES['speed']}
    Log  ${CORINGA_PODERES['speed']}
    ${VERDADE}   =    Set Variable       Deadpool é mais rápido que o Coringa
    ${FALSO}     =    Set Variable       Coringa é mais rápido que o Deadpool
    ${RESULTADO} =    Set variable if    ${DEADPOOL_PODERES['speed']}>${CORINGA_PODERES['speed']}  ${VERDADE}  ${FALSO}
    Log To Console    ${RESULTADO}
