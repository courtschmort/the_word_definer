require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('create a word path', {:type => :feature}) do
  it('creates a word and then goes to the word page') do
    visit('/words')
    click_on('➕Add another word')
    fill_in('word_text', :with => 'existential')
    click_on('Add')
    expect(page).to have_content('existential')
  end
end

describe('create a definition path', {:type => :feature}) do
  it('creates a definition and then goes to the definition page') do
    word = Word.new('existential', nil)
    word.save
    visit("/words/#{word.id}")
    fill_in('definition_text', :with => 'of, relating to, or affirming existence')
    click_on('Add')
    expect(page).to have_content('of, relating to, or affirming existence')
  end
end
