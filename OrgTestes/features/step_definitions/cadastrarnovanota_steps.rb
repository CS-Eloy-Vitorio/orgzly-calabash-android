Dado(/^que eu estou na home$/) do
  @page = page(HomeScreen).await(timeout: 5)
  @page.tocar_botao_msg_inicial
  @page.tocar_menu_principal
end

Quando(/^incluir uma nova nota com o nome "([^"]*)"$/) do |arg1|
  @page.tocar_adicionar_nova_nota
  @page.preencher_nome(arg1)
  @page.tocar_botao_criar
end

Então(/^devo retornar para a home$/) do
  fail "Não retornou para a home." unless @page.estou_na_home?
end

Então(/^visualizar um card com a nova nota de nome "([^"]*)"$/) do |arg1|
  fail "Card com o título #{arg1} não foi criado." unless @page.criou_card?(arg1) 
end
