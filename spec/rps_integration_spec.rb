require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the title case path', {:type => :feature}) do
  it('processes player1 and player2 inputs') do
    visit('/')
    fill_in('player1', :with => 'rock')
    fill_in('player2', :with => 'paper')
    click_button('Submit')
    expect(page).to have_content('Player 2 Wins!')
  end
  it('processes player1 and player2 inputs') do
    visit('/')
    fill_in('player1', :with => 'rock')
    fill_in('player2', :with => 'scissors')
    click_button('Submit')
    expect(page).to have_content('Player 1 Wins!')
  end
  it('processes player1 and player2 inputs') do
    visit('/')
    fill_in('player1', :with => 'paper')
    fill_in('player2', :with => 'paper')
    click_button('Submit')
    expect(page).to have_content('Draw!')
  end
end
