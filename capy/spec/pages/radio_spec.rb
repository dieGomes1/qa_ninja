describe 'escolha de radio', :radio do
	before(:each) do
		visit 'https://training-wheels-protocol.herokuapp.com/radios'
	end

	it 'seleção de radio' do
		find('input[value=the-avengers]').click
	end

	after(:each) do
		sleep 3
	end
end
