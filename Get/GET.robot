*** Settings ***

Resource    ../Resource/BDDpt-br.robot
Resource    ../Resource/Resource-API.robot

*** Test Cases ***

Buscar por dados secretos do Homem de ferro
    Dado que obtive permissão junto ao J.A.R.V.I.S.
    Quando procuro pelos dados secretos do homem de ferro
    Então no response o atributo "biography" está presente
    E o conteúdo apresentado no atributo Full-name é "Tony Stark"
    E o seus aliados são "Iron Knight", "Cobalt Man II", "Spare Parts Man"
    E o nível de inteligencia encontrada é "90"

Batalha super trunfo: Deadpool vs Coringa
    Dado que obtive permissão junto ao J.A.R.V.I.S.
    Quando procuro pelos dados secretos do Coringa
    E procuro pelos dados secretos do Deadpool
    Então deve retornar que o "CORINGA" é o mais inteligente
    E descubro quem é o mais forte
    # E descubro quem é o mais rápido

# Batalha super trunfo: Mulher Maravilha vs Batman
#     Dado que obtive permissão junto ao J.A.R.V.I.S.
#     Quando procuro pelos dados secretos do Mulher-Maravilha
#     E procuro pelos dados secretos do Batman
#     Então deve retornar que o nível de poder do Batman é "47"
#     E deve retornar que o nível de inteligencia da Mulher Maravilha é "88"
#     E descubro quem é o mais poderoso
#
# Buscar por dados secretos do Yoda
#     Dado que obtive permissão junto ao J.A.R.V.I.S.
#     Quando procuro pelos dados secretos do Yoda
#     Então o conteúdo apresentado no atributo Full-name é "Yoda"
#     E deve retornar que o peso em quilo é "17 kg"
#     E deve retornar que a altura em centímetro é "66 cm"
