# @param {String} word1
# @param {String} word2
# @return {String}
def merge_alternately(word1, word2)
  length = word1.length >= word2.length ? word1.length : word2.length
 
  result = []
  length.times do |i|
    w1 = word1[i] ? word1[i] : ""
    w2 = word2[i] ? word2[i] : ""

    result.push(w1).push(w2)
  end
  result.join("")
end
