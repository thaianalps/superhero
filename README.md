Robot Framework em Testes de API
==================

Você vai precisar de:

- [Projeto Robot Framework](https://robotframework.org/)

- [Library BuiltIn](http://robotframework.org/robotframework/latest/libraries/BuiltIn.html)

- [Library Collections](http://robotframework.org/robotframework/latest/libraries/Collections.html)

- [Library ExtendedRequestsLibrary](https://rickypc.github.io/robotframework-extendedrequestslibrary/doc/ExtendedRequestsLibrary.html)

- [API SuperHero](http://superheroapi.com/)



#### Após executar o projeto, recomendo que tente fazer algumas melhorias:

> Você reparou que o passo "Dado que" no arquivo GET.robot é repetida diversas vezes nos cenários, certo? Porém, é possível que ela seja apresentada somente 1 vez. Como você faria?

> Os testes "Batalha super trunfo: Mulher Maravilha vs Batman" e "Buscar por dados secretos do Yoda" estão incompletos. Como você escreverá o resource reaproveitando o que já tem?

> A parte da autenticação pode ser refatorada de uma forma que melhore a manutenção e o re-uso. Como você faria?

> Quais outros de verificações podem ser feitas nessa mesma API?


##### Comando básico para execução:

robot -d Results superhero/Get/GET.robot

##### Dúvidas? Pode entrar em contato aqui pelo github mesmo =D
