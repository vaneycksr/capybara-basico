# frozen_string_literal: true

When('entro no iframe e preenche os campos') do
  visit '/mudancadefoco/iframe'

  # muda o foco para o iframe
  # pode ser apenas o nome do frame na busca
  within_frame('id_do_iframe') do
    # acoes dentro do iframe

    find('#first_name').set 'van'
    find('#last_name').set 'rosas'
  end
end

When('entro no modal e verifico o texto') do
  visit '/mudancadefoco/modal'

  # clica no botao do modal
  find('a[href="#modal1"]').click

  # pega elemento pelo id
  within('#modal1') do
    # verifica se dentro do modal existe esse texto
    page.assert_text(text, 'Modal Teste')

    # clica no botao fechar do modal
    find('.modal-close').click
  end
end
