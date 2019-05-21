describe 'dynamic controls', :dc do
  before(:each) do
    visit 'https://training-wheels-protocol.herokuapp.com/dynamic_controls'
  end

  it 'habilita campo' do
    result = page.has_field?('#movie', disabled: true)
    puts result

    click_button 'Habilita'

    result = page.has_field?('#movie', disabled: false)
    puts result
  end
end
