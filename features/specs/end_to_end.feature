@end_to_end
Feature: Nao encerrando sessao apos cada cenario

   
Scenario: Cadastrar um usuario

When eu cadastro o usuario
Then verifico se o usuário foi cadastrado


Scenario: Editar usuário recém cadastrado

When edito um usuario
Then verifico se o usuário foi editado