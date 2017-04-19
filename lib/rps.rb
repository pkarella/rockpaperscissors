
class String
  define_method(:iswinner) do
    plays = Hash.new()
    plays.store(['rock','paper'], ' You played rock, computer played paper, it loses, haha!')
    plays.store(['rock','scissors'], 'You played rock, computer played scissors, it loses, haha!')
    plays.store(['paper','scissors'], 'You played paper, computer played scissors, it wins, haha!')
    plays.store(['paper','rock'], 'You played rock, computer played paper, it loses, haha!')
    plays.store(['scissors','rock'], 'You played scissors, computer played rock, it wins, haha!')
    plays.store(['scissors','paper'], 'You played scissors, computer played paper, it loses, haha!')

    random_number = 1 + rand(3)

    if random_number == 1
      player2 = 'rock'
    elsif random_number == 2
      player2 = 'paper'
    elsif random_number == 3
      player2 = 'scissors'
    end


    current_play = [self,player2]
    if self == player2
      return 'Draw!'
    else
      return 'player 1 '.concat(plays[current_play])
    end
  end
end
