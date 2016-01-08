require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

#setup capybara to allow for testing along with the javascript code
Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end
Capybara.javascript_driver = :chrome
Capybara.current_driver = Capybara.javascript_driver
set(:show_exceptions, false)

describe('the devoweler path') do
  it('gets sent to the word puzzle page when a word/string is submitted to the form', {:type => :feature}) do
    visit('/')
    fill_in('input', :with => 'Word Puzzle')
    click_button('Submit')
    expect(page).to have_content('W-rd P-zzl-')
  end

  it('will get a Correct! if the word is guessed correctly', {:type => :feature}) do
    visit('/')
    fill_in('input', :with => 'Word Puzzle')
    click_button('Submit')
    fill_in('user_guess', :with => 'word Puzzle')
    click_button('Submit')
    expect(page).to have_content('Correct!')
  end

  it('will get a Try Again! if the word is guessed correctly', {:type => :feature}) do
    visit('/')
    fill_in('input', :with => 'Word Puzzle')
    click_button('Submit')
    fill_in('user_guess', :with => 'wrong')
    click_button('Submit')
    expect(page).to have_content('Try Again!')
  end
end
