# @param {Integer[]} candies
# @param {Integer} extra_candies
# @return {Boolean[]}
def kids_with_candies(candies, extra_candies)
  # Calcurate the boundary value
  boundary_value = candies.max - extra_candies

  # Compare `candies[i]` with the boundary value
  results = candies.map do |candy|
    (candy >= boundary_value) ? true : false
  end
end
