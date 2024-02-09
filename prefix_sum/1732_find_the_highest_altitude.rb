# @param {Integer[]} gain
# @return {Integer}
def largest_altitude(gain)
  highest = 0
  (gain.length + 1).times do |n|
    net = gain.slice(0...n).reduce(0, :+)
    highest = net if net > highest
  end
  highest
end
