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

describe('Definitions page', {:type => :feature}) do
  it("when word is clicked it goes to definitions page") do
    visit('/')
    fill_in('word', :with => "villain")
    click_button("Add word!")
    click_link('villain')
    expect(page).to have_content("villain")
  end

  it("allows user to enter definition and displays it") do
    visit('/')
    click_link('villain')
    fill_in('definition', :with => "a character whose evil actions or motives are important to the plot")
    click_button("Add definition!")
    expect(page).to have_content("character")
  end

  it("allows user to enter more than one definition") do
    visit('/')
    click_link('villain')
    fill_in('definition', :with => "a bad guy")
    click_button("Add definition!")
    fill_in('definition', :with => "the opposite of a hero")
    click_button("Add definition!")
    expect(page).to have_content("bad")
    expect(page).to have_content("opposite")
  end
end
