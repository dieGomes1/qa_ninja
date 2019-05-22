describe 'login dinamico', :loginD do
  before(:each) do
    visit 'https://training-wheels-protocol.herokuapp.com/login2'
  end

  it 'efetuando login' do
    find('#userId').set 'stark'
    find('#passId').set 'jarvis!'

    campo_randomico = find('#login')

    case campo_randomico.text
    when /Dia/
      find('#day').set '29'
    when /Mês/
      find('#month').set '05'
    when /Ano/
      find('#year').set '1970'
    end

    click_button 'Login'

    expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'
  end
end
