When(/^I query all fake posts$/) do
  @api_response = @test_context.api_client.get_posts
end

When(/^I query fake post "([^"]*)"$/) do |post_id|
  @api_response = @test_context.api_client.get_post(post_id)
end

Then(/^the response status code is (\d+)$/) do |code|
  expect(@api_response.status).to eq code.to_i
end

Then(/^there (?:are|is) (\d+) posts?$/) do |size|
  expect(@api_response.body.size).to eq size.to_i
end

Then(/^the returned post userId is "([^"]*)"$/) do |id|
  expect(@api_response.body['userId']).to eq id.to_i
end