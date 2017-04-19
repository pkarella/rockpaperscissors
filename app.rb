require('sinatra')
require('sinatra/reloader')
require('./lib/rps')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/result')do
player1 = params.fetch('player1')
player2 = params.fetch('player2')

if player1.iswinner?(player2)=='true'
  @winner = 'Player 1 Wins!'
elsif player1.iswinner?(player2)=='false'
  @winner = 'Player 2 Wins!'
else
  @winner = 'Draw!'
end
erb(:results)
end

get('/resultcomputer')do
player1 = params.fetch('player1')
player2 = params.fetch('player2')

if player1.iswinner?(player2)=='true'
  @winner = 'Player 1 Wins!'
elsif player1.iswinner?(player2)=='false'
  @winner = 'Player 2 Wins!'
else
  @winner = 'Draw!'
end
erb(:results)
end
