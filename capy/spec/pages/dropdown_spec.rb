describe 'dropdown', :dropdown do
  it 'simples' do
    visit 'https://training-wheels-protocol.herokuapp.com/dropdown'

    # o metodo select busca o texto dentro do ID informado {select('texto', from: 'id')}
    select('Loki', from: 'dropdown')
    # sleep trabalha com segundos
    sleep 3
  end

  it 'diferente' do
    visit 'https://training-wheels-protocol.herokuapp.com/dropdown'

    # o metodo find() busca por css selector
    drop = find('.avenger-list')
    # aqui está buscando pela tag do html {drop.find('tag', text: 'texto dentro da tag')}
    drop.find('option', text: 'Scott Lang').select_option # select_option seleciona a opção localizada
    sleep 3
  end

  it 'seleciona Toni Stark', :Tony do
    visit 'https://training-wheels-protocol.herokuapp.com/dropdown'

    find('.avenger-list').find('option', text: 'Tony Stark').select_option

    sleep 3
  end

  it 'qualquer heroi', :qualquer do
    visit 'https://training-wheels-protocol.herokuapp.com/dropdown'

    drop = find('.avenger-list')
    # o metodo all busca todas as opções dentro de um array | o metodo sample faz um radom dentro do array
    drop.all('option').sample.select_option

    sleep 3
  end
end
