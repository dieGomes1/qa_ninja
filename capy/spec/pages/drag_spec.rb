describe 'drag and drop', :drag do
  before(:each) do
    visit 'https://training-wheels-protocol.herokuapp.com/drag_and_drop'
  end
  it 'mover homem aranha pro time stark' do
    stark = find('.team-stark .column')
    cap = find('.team-cap .column')

    homemAranha = find('img[alt*=Aranha')

    homemAranha.drag_to stark

    expect(stark).to have_css 'img[alt*=Aranha'
    expect(cap).not_to have_css 'img[alt*=Aranha'
  end
end
