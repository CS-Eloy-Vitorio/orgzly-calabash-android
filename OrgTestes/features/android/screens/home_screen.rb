class HomeScreen < AndroidScreenBase
  # Identificador da tela
  trait(:trait)                 { "* marked:'#{titulo_tela}'" }

  # Declare todos os elementos da tela
  element(:titulo_tela) { 'Notebooks' } #text
  element(:ok_button_msg_inicial) { 'button1' } #id
  element(:menu_principal) { 'Open drawer' } #marked
  element(:add_button_nova_nota) { 'android.support.design.widget.FloatingActionButton' } #class
  element(:input_nome) { 'dialog_input' } #id
  element(:button_criar) { 'button1' } #id
  element(:button_cancelar) { 'button2' } #id
  element(:descricao_card) { 'item_book_title' }

  def tocar_botao_msg_inicial
    touch_screen_element(ok_button_msg_inicial)
  end

  def tocar_menu_principal
    touch_screen_element(menu_principal,"* marked:'#{menu_principal}'")
  end

  def tocar_adicionar_nova_nota
    #perform_action("touch_coordinate", 964, 1678)
    wait_for_element_exists add_button_nova_nota, timeout: 5
    touch_screen_element(add_button_nova_nota, "#{add_button_nova_nota}")
  end

  def estou_na_home?
    visible?(titulo_tela, "* marked:'#{titulo_tela}'")
  end

  def preencher_nome(nome)
      wait_for(timeout: 5) { element_exists "* id:'#{input_nome}'" }
      keyboard_enter_text(nome)
  end

  def tocar_botao_criar
    touch_screen_element(button_criar)
  end

  def tocar_botao_cancelar
    touch_screen_element(button_cancelar)
  end

  def criou_card?(titulo)
    visible?(descricao_card, "* id:'#{descricao_card}' text:'#{titulo}'")
  end

end
