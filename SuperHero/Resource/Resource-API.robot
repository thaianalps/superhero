*** Settings ***

Documentation     https://superheroapi.com/
Library           Collections
Library           ExtendedRequestsLibrary

*** Variable ***

${URL}         https://superheroapi.com/api/

*** Keywords ***

obtive permissão junto ao J.A.R.V.I.S.
    Create Session    label=SuperHero    base_url=${URL}

procuro pelos dados secretos do homem de ferro
    ${INFO_HERO}     Get Request    label=SuperHero     uri=3045712542120919/347
    Sleep  15
    Should Be Equal As Strings    ${INFO_HERO.status_code}  200

#
# no response o nome apresentado é ""
#
#
# o nível de inteligencia apresentado é ""
#
#
# o seus aliados apresentados são ""
