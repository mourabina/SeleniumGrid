#language: pt
#Author: Hilario Bina
#Version: 1.0
#Encoding: UTF-8
@LoginSenhorBarriga
Funcionalidade: Login SR Barriga

  @Teste00001 @webSenhorBarriga
  Cenario: 01 - Validar Obrigatoriedade do Campo Email
    Dado que estou no site do Senhor Barriga
    E estou executando o teste
      | id | Numero do CT | Nome do CT                             | Nome do executor | Sprint |
      |  1 | Teste - 01   | Validar Obrigatoriedade do Campo Email | Hilario Bina     | T1     |
    E preencho somente o campo senha com o valor "bina"
    Quando clico no botao Entrar
    Entao deve ser apresentado a mensagem "Email é um campo obrigatório" na tela de login

  @Teste00002 @webSenhorBarriga
  Cenario: 02 - Validar Obrigatoriedade do Campo Senha
    Dado que estou no site do Senhor Barriga
    E estou executando o teste
      | id | Numero do CT | Nome do CT                             | Nome do executor | Sprint |
      |  2 | Teste - 02   | Validar Obrigatoriedade do Campo Senha | Hilario Bina     | T1     |
    E preencho somente o campo Email com o valor "h@h"
    Quando clico no botao Entrar
    Entao deve ser apresentado a mensagem "Senha é um campo obrigatório" na tela de login

  @Teste00003 @webSenhorBarriga
  Cenario: 03 - Validar Autenticacao sem preencher os campos 'Email' e 'Senha'
    Dado que estou no site do Senhor Barriga
    E estou executando o teste
      | id | Numero do CT | Nome do CT                                                     | Nome do executor | Sprint |
      |  3 | Teste - 03   | Validar Autenticacao sem preencher os campos 'Email' e 'Senha' | Hilario Bina     | T1     |
    Quando clico no botao Entrar
    Entao sistema exibi as mensagens "Email é um campo obrigatório" e "Senha é um campo obrigatório" na tela de login

  @Teste00004 @webSenhorBarriga
  Cenario: 04 - Validar Autenticacao com Sucesso
    Dado que estou no site do Senhor Barriga
    E estou executando o teste
      | id | Numero do CT | Nome do CT                       | Nome do executor | Sprint |
      |  4 | Teste - 04   | Validar Autenticacao com Sucesso | Hilario Bina     | T1     |
    E digito email "h@h" e senha "h"
    Quando clico no botao Entrar
    Entao sistema exibi a mensagen "Bem vindo, Hilario!" na Home
