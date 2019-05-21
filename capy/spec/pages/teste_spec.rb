describe 'site qualquer', :teste do

	before(:each) do
		visit 'https://www.keynotesupport.com/websites/contact-form-example-radio-buttons.shtml'
	end

	it 'teste do site x' do
		find('input[value=QBP').click
	end

	after(:each) do
		sleep 3
	end
end