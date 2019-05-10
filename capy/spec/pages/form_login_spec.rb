
describe 'Form Logon' do
  it 'Login com sucesso' do
  	visit 'https://training-wheels-protocol.herokuapp.com/login'

  	fill_in "userId", with: "stark "
  	fill_in "passId", with: "jarvis!"

  	click_button 'Login'

  	expect(find('#flash').visible?).to be true
  end
end