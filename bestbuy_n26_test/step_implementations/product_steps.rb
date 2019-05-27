require_relative 'spec_helper'

step 'POST/products <json_path>' do |json_path|
	file = File.open(json_path, "r")
	data = file.read
	file.close
 
	response = HTTParty.post("#{ENV['LOCAL']}/products", :body => data, :headers => { 'Content-Type' => 'application/json' })
	
	DataStore.keep('POST_request_body', JSON.parse(data))
  DataStore.keep('POST_response_body', JSON.parse(response.body))
  DataStore.keep('POST_response_code', response.code)
end


step 'Validate product created from response' do
	post_request_body = DataStore.use('POST_request_body')
	post_response_body = DataStore.use('POST_response_body')

	expect(post_response_body['id']).not_to be_nil
	expect(post_response_body['name']).to eq(post_request_body['name'])
	expect(post_response_body['type']).to eq(post_request_body['type'])
	expect(post_response_body['upc']).to eq(post_request_body['upc'])
	expect(post_response_body['price']).to eq(post_request_body['price'])
	expect(post_response_body['description']).to eq(post_request_body['description'])
	expect(post_response_body['model']).to eq(post_request_body['model'])
	expect(post_response_body['updatedAt']).not_to be_empty
	expect(post_response_body['createdAt']).not_to be_empty
end


step 'GET/products' do
	response = HTTParty.get("#{ENV['LOCAL']}/products", :headers => { 'Content-Type' => 'application/json' })

  DataStore.keep('GET_response_body', JSON.parse(response.body))
  DataStore.keep('GET_response_code', response.code)
end


step 'GET/products?<filter>' do |filter|
	response = HTTParty.get("#{ENV['LOCAL']}/products?#{filter}", :headers => { 'Content-Type' => 'application/json' })

	DataStore.keep('GET_response_body', JSON.parse(response.body))
  DataStore.keep('GET_response_code', response.code)
end


step 'POST/products <json_path> with <field> <value>' do |json_path, field, value|
	file = File.open(json_path, "r")
	data = file.read
	file.close

	request = JSON.parse(data)
 	request[field] = value
 	data = JSON.unparse(request)

	response = HTTParty.post("#{ENV['LOCAL']}/products", :body => data, :headers => { 'Content-Type' => 'application/json' })

	DataStore.keep('POST_request_body', JSON.parse(data))
  DataStore.keep('POST_response_body', JSON.parse(response.body))
  DataStore.keep('POST_response_code', response.code)
end