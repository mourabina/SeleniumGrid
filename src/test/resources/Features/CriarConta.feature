#language: pt
#Author: Hilario Bina
#Version: 1.0
#Encoding: UTF-8
@CriarConta
Funcionalidade: Criar Conta

  @Teste00009 @webSenhorBarriga
  Cenario: 09 - Criar Conta sem Preencher Campo 'Nome'
    Dado que estou logado no Site do Senhor Barriga "h@h" e "h"
    E estou executando o teste
      | id | Numero do CT | Nome do CT                             | Nome do executor | Sprint |
      |  9 | Teste - 09   | Criar Conta sem Preencher Campo 'Nome' | Hilario Bina     | T1     |
    E acesso a pagina Adiconar
    Quando clico no botao Salvar
    Entao sistema exibi a mensagem "Informe o nome da conta" na tela Adicionar

  @Teste00010 @webSenhorBarriga
  Cenario: 10 - Criar Conta Sucesso
    Dado que estou logado no Site do Senhor Barriga "h@h" e "h"
    E estou executando o teste
      | id | Numero do CT | Nome do CT              | Nome do executor | Sprint |
      | 10 | Teste - 10   | Criar Conta Com Sucesso | Hilario Bina     | T1     |
    E acesso a pagina Adiconar
    E preencho o campo Nome com informacao correta
    Quando clico no botao Salvar
    Entao sistema exibi a mensagem "Conta adicionada com sucesso!" na tela Adicionar
    
  @Teste00011 @webSenhorBarriga
  Cenario: 11 - Criar Conta Com Nome já utlizado
    Dado que estou logado no Site do Senhor Barriga "h@h" e "h"
    E estou executando o teste
      | id | Numero do CT | Nome do CT              | Nome do executor | Sprint |
      | 11 | Teste - 11   | Criar Conta Com Sucesso | Hilario Bina     | T1     |
    E tenho uma conta ja criada
    Quando digito o no campo Nome um valor ja utilizado
    Entao sistema exibi a mensagem "Já existe uma conta com esse nome!" na tela Adicionar
    
    @Teste00004 @webSenhorBarriga
  Cenario: 04 - Validar Autenticacao com Sucesso
    Dado que estou no site do Senhor Barriga
    E estou executando o teste
      | id | Numero do CT | Nome do CT                       | Nome do executor | Sprint |
      |  4 | Teste - 04   | Validar Autenticacao com Sucesso | Hilario Bina     | T1     |
    E digito email "h@h" e senha "h"
    Quando clico no botao Entrar
    Entao sistema exibi a mensagen "Bem vindo, Hilario!" na Home
    
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
    
    @Teste00001 @webSenhorBarriga
  Cenario: 01 - Validar Obrigatoriedade do Campo Email
    Dado que estou no site do Senhor Barriga
    E estou executando o teste
      | id | Numero do CT | Nome do CT                             | Nome do executor | Sprint |
      |  1 | Teste - 01   | Validar Obrigatoriedade do Campo Email | Hilario Bina     | T1     |
    E preencho somente o campo senha com o valor "bina"
    Quando clico no botao Entrar
    Entao deve ser apresentado a mensagem "Email é um campo obrigatório" na tela de login

  
