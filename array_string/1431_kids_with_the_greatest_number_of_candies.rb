# @param {Integer[]} candies
# @param {Integer} extra_candies
# @return {Boolean[]}
def kids_with_candies(candies, extra_candies)
  # #Find the max number in `candies`
  max = candies.max

  # Compare `candies[i] + extra_candies` and the max number
  results = candies.map do |candy|
    (candy + extra_candies >= max) ? true : false
  end
end
