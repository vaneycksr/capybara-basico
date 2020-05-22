# frozen_string_literal: true

When('digito algumas teclas') do
  visit '/users/new'

  # simbolos do teclado so funcionam com send_keys
  find('#user_name').send_keys :page_down

  find('input[value="Criar"]').send_keys :enter
end
