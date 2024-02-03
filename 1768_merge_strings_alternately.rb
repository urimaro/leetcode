# @param {String} word1
# @param {String} word2
# @return {String}
def merge_alternately(word1, word2)
  length = word1.length >= word2.length ? word1.length : word2.length
 
  result = []
  length.times do |i|
    result.push(word1[i], word2[i])
    # `Array#<<` は引数を1つしかとれない
    # result << word1[i] << word2[i]
  end
  result.join("")
end
