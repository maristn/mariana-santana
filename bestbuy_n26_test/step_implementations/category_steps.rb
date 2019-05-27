require_relative 'spec_helper'

step 'POST/categories <json_path>' do |json_path|
	file = File.open(json_path, "r")
	data = file.read
	file.close

	request = JSON.parse(data)
 	request['id'] = SecureRandom.urlsafe_base64(5)
 	data = JSON.unparse(request)
 
	response = HTTParty.post("#{ENV['LOCAL']}/categories", :body => data, :headers => { 'Content-Type' => 'application/json' })
	
	DataStore.keep('POST_request_body', JSON.parse(data))
  DataStore.keep('POST_response_body', JSON.parse(response.body))
  DataStore.keep('POST_response_code', response.code)
end

step 'Validate category created from response' do
	post_request_body = DataStore.use('POST_request_body')
	post_response_body = DataStore.use('POST_response_body')

	expect(post_response_body['id']).not_to be_nil
	expect(post_response_body['name']).to eq(post_request_body['name'])
	expect(post_response_body['updatedAt']).not_to be_empty
	expect(post_response_body['createdAt']).not_to be_empty
end

step 'GET/categories?<filter>' do |filter|
	response = HTTParty.get("#{ENV['LOCAL']}/categories?#{filter}", :headers => { 'Content-Type' => 'application/json' })

	DataStore.keep('GET_response_body', JSON.parse(response.body))
  DataStore.keep('GET_response_code', response.code)
end


step 'GET/categories' do
	response = HTTParty.get("#{ENV['LOCAL']}/categories", :headers => { 'Content-Type' => 'application/json' })

  DataStore.keep('GET_response_body', JSON.parse(response.body))
  DataStore.keep('GET_response_code', response.code)
end

step 'POST/categories <json_path> with <field> <value>' do |json_path, field, value|
	file = File.open(json_path, "r")
	data = file.read
	file.close

	request = JSON.parse(data)
 	request[field] = value
 	data = JSON.unparse(request)

	response = HTTParty.post("#{ENV['LOCAL']}/categories", :body => data, :headers => { 'Content-Type' => 'application/json' })

	DataStore.keep('POST_request_body', JSON.parse(data))
  DataStore.keep('POST_response_body', JSON.parse(response.body))
  DataStore.keep('POST_response_code', response.code)
end 
