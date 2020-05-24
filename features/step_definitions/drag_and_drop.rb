# frozen_string_literal: true

Given('que eu estou na tela de dragdrop') do
  visit '/iteracoes/draganddrop'
end

When('movo o dragdrop') do
  # mapeia o primeiro elemento (origem)
  @primeiro_elemento = find('#winston')

  # mapeia para onde o elemento vai (destino)
  @segundo_elemento = find('#dropzone')

  # arrasta da origem para o destino
  @primeiro_elemento.drag_to(@segundo_elemento)
end
