######### DADO #########
Dado(/^que (?:Eu|eu) (?:arrastei|arrasto) a tela para (baixo|cima|esquerda|direita) ate ver o elemento "(.*?)"$/) do |direction, element|
  @page.drag_until_element_is_visible_with_special_query direction.to_sym, element
end

Dado(/^que (?:Eu|eu) estou em uma pagina que contem '(.*?)'$/) do |page_text|
  @page.is_on_page! page_text
end

######### QUANDO #########

Quando(/^(?:Eu|eu) (?:arrastei|arrasto) a tela para (esquerda|direita|baixo|cima) (\d+) vezes$/) do |direction, times|
  @page.drag_for_specified_number_of_times(direction.to_sym, times.to_i)
end

Quando(/^(?:Eu|eu) (?:clico|cliquei) no elemento "(.*?)"$/) do |element|
  @page.touch_screen_element element
end

Quando(/^(?:Eu|eu) (?:arrastei|arrasto) a tela para (baixo|cima|esquerda|direita)$/) do |direction|
  @page.drag_to direction.to_sym
end

Quando(/^(?:Eu |)reiniciar o aplicativo$/) do
  @page.restart_app
end

######### ENTãO #########

Então(/^(?:Eu|eu) (?:espero|esperei) ate a barra de progresso sumir$/) do
  # wait_for_progress is a method of the base class, so doesn't matter what is
  # the value of the @page variable, because all screens will have this method
  @page.wait_for_progress
end

Então(/^(?:Eu|eu) deveria ver a pagina '(.*?)'$/) do |page_text|
  @page.is_on_page! page_text
end

Então(/^(?:Eu|eu) deveria ver uma pagina que contem '(.*?)'$/) do |page_text|
  @page.is_on_page! page_text
end


Então(/^faco um print$/) do
  screenshot_embed
end

