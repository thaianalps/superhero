*** Settings ***

Resource    ../Resource/BDDpt-br.robot
Resource    ../Resource/Resource-API.robot

*** Test Cases ***

Buscar por dados secretos do Homem de ferro
    Dado que obtive permissão junto ao J.A.R.V.I.S.
    Quando procuro pelos dados secretos do homem de ferro
    # Então no response o nome apresentado é ""
    # E o nível de inteligencia apresentado é ""
    # E o seus aliados apresentados são ""
