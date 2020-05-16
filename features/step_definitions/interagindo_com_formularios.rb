# frozen_string_literal: true

When('eu faco cadastro') do
  visit '/users/new'

  # acha o campo e preenche
  fill_in('user_name', with: 'van')

  # acha o campo pelo css e preenche
  find('#user_lastname').set('rosas')

  # acha o campo pelo css e preenche
  find('#user_email').send_keys('vaneyck23@gmail.com')

  fill_in(id: 'user_address', with: 'Avenida José Pessoa da Costa')
  find('#user_university').set('UFPB')
  find('#user_profile').send_keys('Analista de testes')
  find('#user_gender').set('Masculino')
  find('#user_age').set('27')

  find('input[value="Criar"]').click

  sleep 2
end

Then('verifico se fui cadastrado') do
  # busco o campo que contem a mensagem de sucesso
  texto = find('#notice').text

  expect(texto).to eql 'Usuário Criado com sucesso'
end
