# frozen_string_literal: true

When('interajo com dropdown e select') do
  visit '/buscaelementos/dropdowneselect'

  # find('a[class="btn dropdown-button"]').click
  find('.btn.dropdown-button').click
  find('#dropdown3').click

  # seleciona a opcao de um select
  select 'Chrome', from: 'dropdown'

  # clica na opcao que voce mapeou
  find('option[value="2"]').select_option
end

When('preencho autocomplete') do
  visit 'widgets/autocomplete'

  # preenche o campo
  find('#autocomplete-input').set 'Paraí'

  # clica na opcao
  # procura a tag que contenha o texto
  find('ul', text: 'Paraíba').click
  sleep 3
end
