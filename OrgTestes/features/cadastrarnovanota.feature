# language: pt
Funcionalidade: Cadastrarnovanota

  Contexto:
    # Insira os passos

    Cenário: Cadastrar nova nota
      Dado que eu estou na home
      Quando incluir uma nova nota com o nome "Primeira nota"
      Então devo retornar para a home
      E visualizar um card com a nova nota de nome "Primeira nota"
