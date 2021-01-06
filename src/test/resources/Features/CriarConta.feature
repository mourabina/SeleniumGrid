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
