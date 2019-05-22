describe 'select2' do
  describe 'single', :sing do
    before(:each) do
      visit 'https://training-wheels-protocol.herokuapp.com/apps/select2/single.html'
    end

    it 'seleciona ator por nome' do
      find('.select2-selection--single').click
      # no find foi utilizado a class da LI que é igual para todos os LI's do site
      find('.select2-results__option', text: 'Chris Rock').click
      # se utilizar "equal" é comparado o objeto , usando o "eql" é comparado somente o conteúdo.
      expect(find('.select2-selection__rendered').text).to eql('Chris Rock')
    end

    it 'seleciona ator pela busca' do
      find('.select2-selection--single').click
      find('.select2-search__field').set 'Adam Sandler'
      find('.select2-results__option').click

      expect(find('.select2-selection__rendered').text).to eql('Adam Sandler')
    end
  end

  describe 'multiple', :multi do
    before(:each) do
      visit 'https://training-wheels-protocol.herokuapp.com/apps/select2/multi.html'
    end

    def seleciona(ator)
      find('.select2-selection--multiple').click
      find('.select2-results__option', text: ator).click
    end

    it 'seleciona varios atores' do
      atores = ['Adam Sandler', 'Chris Rock', 'Jim Carrey','Kevin James','Owen Wilson']

      atores.each do |single|
        seleciona(single)
      end

      expect(find('.select2-selection__choice', text: 'Kevin James').text).to include 'Kevin James'
      expect(find('.select2-selection__choice', text: 'Adam Sandler').text).to include 'Adam Sandler'
    end

    it 'excluir ator selecionado' do
      # adiciona ator
      seleciona('Chris Rock')
      seleciona('Owen Wilson')

      # exclui ator
      seleciona('Chris Rock')
      seleciona('Owen Wilson')

      expect(find('.select2-search__field')).not_to have_css '.select2-selection__choice'
    end
  end
end
