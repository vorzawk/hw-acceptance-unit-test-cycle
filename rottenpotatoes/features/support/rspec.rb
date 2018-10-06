require 'rspec/core'

RSpec.configure do |config|
  config.mock_with :rspec do |c|
    c.syntax = [:should, :expect]
  end
  config.expect_with :rspec do |c|
    c.syntax = [:should, :expect]
  end
end

Given(/^the following movies exist:$/) do |movies_table|
  # movies_table is a Cucumber::MultilineArgument::DataTable
  movies_table.hashes.each do |movie|
    Movie.create!(movie)
  end
end

Then(/^the director of "([^"]*)" should be "([^"]*)"$/) do |movie, director|
    page.should have_content(movie)
    page.should have_content(director)
end
