*** Settings ***

Resource    ../Resource/BDDpt-br.robot
Resource    ../Resource/Resource-API.robot

*** Test Cases ***

Buscar por dados secretos do Homem de ferro
    Dado que obtive permissão junto ao J.A.R.V.I.S.
    Quando procuro pelos dados secretos do homem de ferro
    Então no response o atributo "biography" está presente
    E o conteúdo apresentado no atributo Full-name é "Tony Stark"
    E o seus aliados são "Iron Knight", "Cobalt Man II", "Hogan Potts"
    E o nível de inteligencia encontrada é "90"

Batalha super trunfo: Deadpool vs Coringa
    Dado que obtive permissão junto ao J.A.R.V.I.S.
    Quando procuro pelos dados secretos do Coringa
    E procuro pelos dados secretos do Deadpool
    Então deve retornar que o "CORINGA" é o mais inteligente
    E descubro quem é o mais forte
    E descubro quem é o mais rápido
