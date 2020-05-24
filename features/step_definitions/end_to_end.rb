# frozen_string_literal: true

When('eu cadastro o usuario') do
  visit '/users/new'
  fill_in(id: 'user_name', with: 'van eyck')

  find('#user_lastname').set 'rosas'

  fill_in(id: 'user_email', with: 'vaneyck@gmail.com')

  find('input[value="Criar"]').click
end

Then('verifico se o usuário foi cadastrado') do
  page.assert_text(text, 'Usuário Criado com sucesso')
end

When('edito um usuario') do
  find('.btn.waves-light.blue').click
end

Then('verifico se o usuário foi editado') do
end
