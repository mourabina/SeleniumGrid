#language: pt
#Author: Hilario Bina
#Version: 1.0
#Encoding: UTF-8
@ResumoMensal
Funcionalidade: Resumo Mensal

  @Teste00019 @webSenhorBarriga
  Cenario: 19 - Validar Obrigatoriedade do Campo Email
    Dado que estou no site do Senhor Barriga
    E estou executando o teste
      | id | Numero do CT | Nome do CT                             | Nome do executor | Sprint |
      | 19 | Teste - 19   | Validar Obrigatoriedade do Campo Email | Hilario Bina     | T1     |
    E preencho somente o campo senha com o valor "bina"
    Quando clico no botao Entrar
    Entao deve ser apresentado a mensagem "Email é um campo obrigatório" na tela de login

  @Teste00020 @webSenhorBarriga
  Cenario: 20 - Validar Obrigatoriedade do Campo Senha
    Dado que estou no site do Senhor Barriga
    E estou executando o teste
      | id | Numero do CT | Nome do CT                             | Nome do executor | Sprint |
      | 20 | Teste - 20   | Validar Obrigatoriedade do Campo Senha | Hilario Bina     | T1     |
    E preencho somente o campo Email com o valor "h@h"
    Quando clico no botao Entrar
    Entao deve ser apresentado a mensagem "Senha é um campo obrigatório" na tela de login

  @Teste00021 @webSenhorBarriga
  Cenario: 21 - Validar Autenticacao sem preencher os campos 'Email' e 'Senha'
    Dado que estou no site do Senhor Barriga
    E estou executando o teste
      | id | Numero do CT | Nome do CT                                                     | Nome do executor | Sprint |
      | 21 | Teste - 21   | Validar Autenticacao sem preencher os campos 'Email' e 'Senha' | Hilario Bina     | T1     |
    Quando clico no botao Entrar
    Entao sistema exibi as mensagens "Email é um campo obrigatório" e "Senha é um campo obrigatório" na tela de login
