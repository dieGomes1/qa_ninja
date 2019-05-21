describe "caixas_de_seleção", :checkbox do
  before(:each) do 
    visit 'https://training-wheels-protocol.herokuapp.com/checkboxes'
  end

  it 'marcando uma opção' do
    check('thor')
  end

  it 'marcando uma opção com find' do
    find('input[value=cap]').set(true)
  end

  it 'desmarcando uma opção' do
    find('input[value=guardians]').set(false)
  end

  after(:each) do
    sleep 3
  end
end
