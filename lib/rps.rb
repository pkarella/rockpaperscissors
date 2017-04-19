class String
  define_method(:iswinner?) do |opponent|
    if self==opponent
      'draw'
    elsif self=='rock'&& opponent =='scissors'
      'true'
    elsif self=='scissors'&& opponent == 'paper'
      'true'
    elsif self=='paper'&& opponent == 'rock'
      'true'
    else
      'false'
    end
  end
end
