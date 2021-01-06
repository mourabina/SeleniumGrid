#language: pt
#Author: Hilario Bina
#Version: 1.0
#Encoding: UTF-8
@NovoUsuario
Funcionalidade: Novo Usuario

  @Teste00007 @webSenhorBarriga
  Cenario: 7 - Criar Usuario Preenchendo Apenas Campo 'Nome'
    Dado que estou no site do Senhor Barriga
    E estou executando o teste
      | id | Numero do CT | Nome do CT                                    | Nome do executor | Sprint |
      | 7 | Teste - 07   | Criar Usuario Preenchendo Apenas Campo 'Nome' | Hilario Bina     | T1     |
    E acesso a pagina Criar Novo Usuario
    E preencho apenas o campo Nome
    Quando clico no botao Cadastrar
    Entao sistema exibi as mensagem "Email é um campo obrigatório" e "Senha é um campo obrigatório" na tela Novo Usuario

  @Teste00008 @webSenhorBarriga
  Cenario: 8 - Criar Usuario Preenchendo Apenas Campo 'Email'
    Dado que estou no site do Senhor Barriga
    E estou executando o teste
      | id | Numero do CT | Nome do CT                                     | Nome do executor | Sprint |
      | 8 | Teste - 08   | Criar Usuario Preenchendo Apenas Campo 'Email' | Hilario Bina     | T1     |
    E acesso a pagina Criar Novo Usuario
    E preencho apenas o campo Email
    Quando clico no botao Cadastrar
    Entao sistema exibi as mensagem "Nome é um campo obrigatório" e "Senha é um campo obrigatório" na tela Novo Usuario

  @Teste00009 @webSenhorBarriga
  Cenario: 9 - Criar Usuario Preenchendo Apenas Campo 'Senha'
    Dado que estou no site do Senhor Barriga
    E estou executando o teste
      | id | Numero do CT | Nome do CT                                     | Nome do executor | Sprint |
      | 9 | Teste - 09   | Criar Usuario Preenchendo Apenas Campo 'senha' | Hilario Bina     | T1     |
    E acesso a pagina Criar Novo Usuario
    E preencho apenas o campo Senha
    Quando clico no botao Cadastrar
    Entao sistema exibi as mensagem "Nome é um campo obrigatório" e "Email é um campo obrigatório" na tela Novo Usuario

  @Teste00008 @webSenhorBarriga
  Cenario: 08 - Criar Usuario Com Sucesso
    Dado que estou no site do Senhor Barriga
    E estou executando o teste
      | id | Numero do CT | Nome do CT                | Nome do executor | Sprint |
      |  8 | Teste - 08   | Criar Usuario Com Sucesso | Hilario Bina     | T1     |
    E acesso a pagina Criar Novo Usuario
    E preencho todos os campos corretamente
    Quando clico no botao Cadastrar
    Entao sistema exibi a mensagem "Usuário inserido com sucesso" na tela Novo Usuario
