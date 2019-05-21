describe 'Form Logon' do
  it 'login com sucesso' do
    visit 'https://training-wheels-protocol.herokuapp.com/login'

    fill_in 'userId', with: 'stark'
    fill_in 'passId', with: 'jarvis!'

    click_button 'Login'

    expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'
  end

  it 'senha incorreta' do
    visit 'https://training-wheels-protocol.herokuapp.com/login'

    fill_in 'userId', with: 'stark'
    fill_in 'passId', with: 'jarvis'

    click_button 'Login'

    expect(find('#flash').text).to include 'Senha é invalida!'
  end

  it 'usuário não cadastrado' do
    visit 'https://training-wheels-protocol.herokuapp.com/login'

    fill_in 'userId', with: 'stark1'
    fill_in 'passId', with: 'jarvis!'

    click_button 'Login'

    expect(find('#flash').text).to include 'O usuário informado não está cadastrado!'
  end
end
