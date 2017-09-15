require './app'
require 'capybara/rspec'
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('Word list', {:type => :feature}) do
  it("saves new word and shows word on screen") do
    visit('/')
    fill_in('word', :with => "alligator")
    click_button("Add word!")
    expect(page).to have_content("alligator")
  end
end
