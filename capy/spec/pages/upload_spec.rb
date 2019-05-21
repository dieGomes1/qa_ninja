describe 'upload', :upload do
  before(:each) do
    visit 'https://training-wheels-protocol.herokuapp.com/upload'
    @arquivo = Dir.pwd + '/spec/arquivos/arquivo1.txt'
    @imagem = Dir.pwd + '/spec/arquivos/bg-spider.png'
  end

  it 'upload de arquivo texto' do
    attach_file('file-upload', @arquivo)
    click_button 'Upload'

    div_arquivo = find('#uploaded-file')
    expect(div_arquivo.text).to eql('arquivo1.txt')
  end
  it 'upload de imagem', :img do
    attach_file('file-upload', @imagem)
    click_button 'Upload'

    img = find('#new-image')
    expect(img[:src]).to include 'bg-spider.png'
  end

  after(:each) do
    sleep 3
  end
end
