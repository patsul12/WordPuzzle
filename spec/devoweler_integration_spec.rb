require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the devoweler path') do
  it('gets sent to the word puzzle page when a word/string is submitted to the form', {:type => :feature}) do
    visit('/')
    fill_in('input', :with => 'Word Puzzle')
    click_button('Submit')
    expect(page).to have_content('W-rd P-zzl-')
  end

  it('will get a response if the word is guessed correctly', {:type => :feature}) do
    visit('/')
    fill_in('input', :with => 'Word Puzzle')
    click_button('Submit')
    fill_in('user_guess', :with => 'Word Puzzle')
    click_button('Submit')
    expect(page).to have_content('Correct!')
  end
end
