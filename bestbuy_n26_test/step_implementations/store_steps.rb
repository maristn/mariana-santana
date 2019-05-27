require_relative 'spec_helper'

step 'POST/stores <json_path>' do |json_path|
	file = File.open(json_path, "r")
	data = file.read
	file.close
 
	response = HTTParty.post("#{ENV['LOCAL']}/stores", :body => data, :headers => { 'Content-Type' => 'application/json' })
	
	DataStore.keep('POST_request_body', JSON.parse(data))
  DataStore.keep('POST_response_body', JSON.parse(response.body))
  DataStore.keep('POST_response_code', response.code)
end


step 'Validate store created from response' do
	post_request_body = DataStore.use('POST_request_body')
	post_response_body = DataStore.use('POST_response_body')

	expect(post_response_body['id']).not_to be_nil
	expect(post_response_body['name']).to eq(post_request_body['name'])
	expect(post_response_body['type']).to eq(post_request_body['type'])
	expect(post_response_body['address']).to eq(post_request_body['address'])
	expect(post_response_body['address2']).to eq(post_request_body['address2'])
	expect(post_response_body['city']).to eq(post_request_body['city'])
	expect(post_response_body['state']).to eq(post_request_body['state'])
	expect(post_response_body['zip']).to eq(post_request_body['zip'])
	expect(post_response_body['lat']).to eq(post_request_body['lat'])
	expect(post_response_body['lng']).to eq(post_request_body['lng'])
	expect(post_response_body['hours']).to eq(post_request_body['hours'])
	expect(post_response_body['updatedAt']).not_to be_empty
	expect(post_response_body['createdAt']).not_to be_empty
end


step 'GET/stores' do
	response = HTTParty.get("#{ENV['LOCAL']}/stores", :headers => { 'Content-Type' => 'application/json' })

  DataStore.keep('GET_response_body', JSON.parse(response.body))
  DataStore.keep('GET_response_code', response.code)
end


step 'GET/stores?<filter>' do |filter|
	response = HTTParty.get("#{ENV['LOCAL']}/stores?#{filter}", :headers => { 'Content-Type' => 'application/json' })

	DataStore.keep('GET_response_body', JSON.parse(response.body))
  DataStore.keep('GET_response_code', response.code)
end


step 'POST/stores <json_path> with <field> <value>' do |json_path, field, value|
	file = File.open(json_path, "r")
	data = file.read
	file.close

	request = JSON.parse(data)
 	request[field] = value
 	data = JSON.unparse(request)

	response = HTTParty.post("#{ENV['LOCAL']}/stores", :body => data, :headers => { 'Content-Type' => 'application/json' })

	DataStore.keep('POST_request_body', JSON.parse(data))
  DataStore.keep('POST_response_body', JSON.parse(response.body))
  DataStore.keep('POST_response_code', response.code)
end