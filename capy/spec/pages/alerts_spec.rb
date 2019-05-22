describe 'mensagens JS', :js do
  before(:each) do
    visit 'https://training-wheels-protocol.herokuapp.com/javascript_alerts'
  end

  it 'alert' do
    click_button 'Alerta'
    msg = page.driver.browser.switch_to.alert.text

    expect(msg).to eql 'Isto é uma mensagem de alerta'
  end

  it 'confirma' do
    click_button 'Confirma'
    page.driver.browser.switch_to.alert.accept

    expect(page).to have_content 'Mensagem confirmada'
  end

  it 'não confirma' do
    click_button 'Confirma'
    page.driver.browser.switch_to.alert.dismiss

    expect(page).to have_content 'Mensagem não confirmada'
  end

  it 'Prompt' do
    accept_prompt(with: 'Diego') do
      click_button 'Prompt'
    end
    expect(page).to have_content 'Olá, Diego'
  end

  it 'dismiss_prompt', :null do
    dismiss_prompt do
      click_button 'Prompt'
    end
    expect(page).to have_content 'Olá, null'
  end
end
