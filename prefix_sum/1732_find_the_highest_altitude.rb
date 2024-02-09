# @param {Integer[]} gain
# @return {Integer}
def largest_altitude(gain)
  results = []
  (gain.length + 1).times do |n|
    results << gain.slice(0...n).reduce(0, :+)
  end
  results.max
end
