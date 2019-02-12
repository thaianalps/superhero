*** Settings ***

Documentation     https://superheroapi.com/
Library           Collections
Library           ExtendedRequestsLibrary

*** Variable ***
${PUBLIC_KEY}    6eaf0e771cab46e2e79c865b8c24601d
${PRIVATE_KEY}   5aa5c0a7c97a3e0cf774a236556f1847cd8356db
${URL}           https://gateway.marvel.com

*** Keywords ***

obtive permissão junto ao J.A.R.V.I.S.
    ${SESSION}  Create Session    SuperHero    ${URL}
    # Log  ${SESSION.content}

procuro pelos dados secretos do homem de ferro
    ${INFO_HERO}     Get Request    SuperHero     uri=v1/public/comics?ts=1&apikey=${PUBLIC_KEY}&hash=${PRIVATE_KEY}
    Log  ${INFO_HERO.content}
    Should Be Equal As Strings    ${INFO_HERO.status_code}  200

#
# no response o nome apresentado é ""
#
#
# o nível de inteligencia apresentado é ""
#
#
# o seus aliados apresentados são ""
