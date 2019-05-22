describe "mudando de aba", :wnd do
  before(:each) do
    visit 'https://training-wheels-protocol.herokuapp.com/windows'
  end

  it 'acessa nova aba' do
    nova_janela = window_opened_by { click_link 'Clique aqui' }

    within_window -> { page.title == 'Nova Janela' } do
      expect(page).to have_content 'Aqui temos uma nova janela \o/'
    end

    nova_janela.close
    sleep 3
  end
end
