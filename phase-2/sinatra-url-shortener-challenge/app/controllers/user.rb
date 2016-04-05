post '/users' do

	# request.body.rewind
 # 	request_payload = JSON.parse request.body.read
	# request_payload

	# new_user = User.create(name: request_payload['name'])
	new_user = User.create(name: params['name'])

	json :data => new_user
end

get '/users' do
	all_users = User.all
	json :data => all_users
end

get '/users/:id' do
	user = User.find(params[:id])	
	json :data => user
end