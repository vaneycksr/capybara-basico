# frozen_string_literal: true

When('clico em um ícone que esta em uma tabela') do
  visit '/users'

  #   edit = all('table tbody tr', text: 'Abilio')
  #   # edit.find("a", text: "delete").click

  #   botao = edit.all('td')[9].text

  # first('[href="/users/19079a"]').click
  # first('a[href="/users/19079/edit"]').click
  # find('[href="/users/19079"]', text: 'search').click

  # procura pelo href e pelo texto
  find('[href="/users/19079"]', text: 'delete').click

  sleep 2
end
