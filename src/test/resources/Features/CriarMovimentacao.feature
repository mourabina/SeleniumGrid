#language: pt
#Author: Hilario Bina
#Version: 1.0
#Encoding: UTF-8
@CriarMovimentacao
Funcionalidade: Criar Movimentação

  @Teste00012 @webSenhorBarriga
  Cenario: 12 - Criar Movimentacao Com Sucesso
    Dado que estou logado no Site do Senhor Barriga "h@h" e "h"
    E estou executando o teste
      | id | Numero do CT | Nome do CT                     | Nome do executor | Sprint |
      | 12 | Teste - 12   | Criar Movimentacao Com Sucesso | Hilario Bina     | T1     |
    E tenho uma conta ja criada
    E acesso a pagina Criar Movimentacao
    Quando crio uma movimentacao com dados validos
    Entao sistema exibi a mensagem "Movimentação adicionada com sucesso!" na tela Movimentacao

  @Teste00013 @webSenhorBarriga
  Cenario: 13 - Criar Movimentacao Sem o campo 'Data da Movimentação'
    Dado que estou logado no Site do Senhor Barriga "h@h" e "h"
    E estou executando o teste
      | id | Numero do CT | Nome do CT                                            | Nome do executor | Sprint |
      | 13 | Teste - 13   | Criar Movimentacao Sem o campo 'Data da Movimentação' | Hilario Bina     | T1     |
    E tenho uma conta ja criada
    E acesso a pagina Criar Movimentacao
    Quando crio uma movimentacao sem o campo Data da Movimentacao
    Entao sistema exibi a mensagem "Data da Movimentação é obrigatório" na tela Movimentacao

  @Teste00014 @webSenhorBarriga
  Cenario: 14 - Criar Movimentacao Sem o campo 'Data do Pagamento'
    Dado que estou logado no Site do Senhor Barriga "h@h" e "h"
    E estou executando o teste
      | id | Numero do CT | Nome do CT                                         | Nome do executor | Sprint |
      | 14 | Teste - 14   | Criar Movimentacao Sem o campo 'Data do Pagamento' | Hilario Bina     | T1     |
    E tenho uma conta ja criada
    E acesso a pagina Criar Movimentacao
    Quando crio uma movimentacao sem o campo Data do Pagamento
    Entao sistema exibi a mensagem "Data do pagamento é obrigatório" na tela Movimentacao

  @Teste00015 @webSenhorBarriga
  Cenario: 15 - Criar Movimentacao Sem o campo 'Descrição'
    Dado que estou logado no Site do Senhor Barriga "h@h" e "h"
    E estou executando o teste
      | id | Numero do CT | Nome do CT                                 | Nome do executor | Sprint |
      | 15 | Teste - 15   | Criar Movimentacao Sem o campo 'Descrição' | Hilario Bina     | T1     |
    E tenho uma conta ja criada
    E acesso a pagina Criar Movimentacao
    Quando crio uma movimentacao sem o campo Descrição
    Entao sistema exibi a mensagem "Descrição é obrigatório" na tela Movimentacao
