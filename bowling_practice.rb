# frozen_string_literal: true

score = ARGV[0]
scores = score.split(',')
p scores

shots = []
scores.each do |n|
  if n != 'X'
    shots << n.to_i
  else
    shots << 10
    shots << 0 if shots.size < 18
  end
end

p shots
