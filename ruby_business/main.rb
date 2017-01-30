require "sinatra"
require 'sendgrid-ruby'

get '/home' do 
	@title_tab = "Home"
	erb :home
end 

get '/contact' do 
	@title_tab = 'Contact'
	erb :contact
end 

get '/image_gallery' do
	@title_tab = 'Images'
	erb :image_gallery
end

get '/learn_more' do
	@title_tab = 'Pick Me!'
	erb :learn_more
	
end 

post '/user-info' do

	p params.inspect


	from = SendGrid::Email.new(email: 'skinner.alissa@gmail.com')
	subject = "So you want to come to Mars!"
	to = SendGrid::Email.new(email: 'skinner.alissa@gmail.com')

	content = SendGrid::Content.new(type: 'text/plain', value: "Hello, Email!")

	mail = SendGrid::Mail.new(from, subject, to, content)

	sg = SendGrid::API.new(api_key: ENV['SENDGRID_KEY'])

	response = sg.client.mail._('send').post(request_body: mail.to_json)
	
	puts response.status_code
	puts response.body 


	redirect to('/home')

end
