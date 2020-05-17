# frozen_string_literal: true

When('eu marco um checkbox e radiobox') do
  visit '/buscaelementos/radioecheckbox'

  # clicando em um checkbox
  find('label[for="white"]').click

  # procura um checkbox pelo id
  # permite a label ser clicado
  check('purple', allow_label_click: true)

  sleep 2
  # desmarcar uma opcao
  uncheck('purple', allow_label_click: true)

  # clicando em um radiobox
  choose('red', allow_label_click: true)

  sleep 2
end
