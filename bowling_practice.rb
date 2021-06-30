# frozen_string_literal: true

score = ARGV[0]
scores = score.split(',')
p scores

shots = []
scores.each do |n|
  if n != 'X'
    shots << n.to_i
  elsif n == 'X' && shots.size.odd?
    shots << 10
  else
    shots << 10
    shots << 0 if shots.size < 18
  end
end
p shots

frames = []
shots.first(18).each_slice(2) do |n|
  frames << n
end
frames << shots.slice(18..20)

p frames
