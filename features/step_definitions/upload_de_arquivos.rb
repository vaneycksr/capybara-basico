# frozen_string_literal: true

When('eu faco upload de um arquivo') do
  visit '/outros/uploaddearquivos'

  @arquivo = Dir.pwd + '/features/fixtures/ruby.png'

  # outro modo
  # @arquivo = File.join(Dir.pwd, '/features/fixtures/ruby.png')

  # mapeia o botao do tipo file e passa o caminho do arquivo
  # esse make_visible: true eh para exibir a imagem
  attach_file('upload', @arquivo, make_visible: true)

  sleep 3
end
