#language: pt
#Author: Hilario Bina
#Version: 1.0
#Encoding: UTF-8
@Home
Funcionalidade: Home

  @Teste00016 @webSenhorBarriga
  Cenario: 16 - Criar Usuario Preenchendo Apenas Campo 'Nome'
    Dado que estou no site do Senhor Barriga
    E estou executando o teste
      | id | Numero do CT | Nome do CT                                    | Nome do executor | Sprint |
      | 16 | Teste - 16   | Criar Usuario Preenchendo Apenas Campo 'Nome' | Hilario Bina     | T1     |
    E acesso a pagina Criar Novo Usuario
    E preencho apenas o campo Nome
    Quando clico no botao Cadastrar
    Entao sistema exibi as mensagem "Email é um campo obrigatório" e "Senha é um campo obrigatório" na tela Novo Usuario

  @Teste00017 @webSenhorBarriga
  Cenario: 17 - Criar Usuario Preenchendo Apenas Campo 'Email'
    Dado que estou no site do Senhor Barriga
    E estou executando o teste
      | id | Numero do CT | Nome do CT                                     | Nome do executor | Sprint |
      | 17 | Teste - 17   | Criar Usuario Preenchendo Apenas Campo 'Email' | Hilario Bina     | T1     |
    E acesso a pagina Criar Novo Usuario
    E preencho apenas o campo Email
    Quando clico no botao Cadastrar
    Entao sistema exibi as mensagem "Nome é um campo obrigatório" e "Senha é um campo obrigatório" na tela Novo Usuario

  @Teste00018 @webSenhorBarriga
  Cenario: 18 - Criar Usuario Preenchendo Apenas Campo 'Senha'
    Dado que estou no site do Senhor Barriga
    E estou executando o teste
      | id | Numero do CT | Nome do CT                                     | Nome do executor | Sprint |
      | 18 | Teste - 18   | Criar Usuario Preenchendo Apenas Campo 'senha' | Hilario Bina     | T1     |
    E acesso a pagina Criar Novo Usuario
    E preencho apenas o campo Senha
    Quando clico no botao Cadastrar
    Entao sistema exibi as mensagem "Nome é um campo obrigatório" e "Email é um campo obrigatório" na tela Novo Usuario
