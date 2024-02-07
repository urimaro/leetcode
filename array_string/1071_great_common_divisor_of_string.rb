# @param {String} str1
# @param {String} str2
# @return {String}
def gcd_of_strings(str1, str2)
  length1 = str1.length
  length2 = str2.length

  length2.times do |n|
    count = n + 1

    # GCD for the lengthｓ
    ## Verify whether the lengths of `str1` and `str2` are multiples of the length of the substring in `str2`.
    next unless length2 % count == 0
    substr2_length = length2 / count
    multiple2 = length2 / substr2_length

    next unless length1 % substr2_length == 0
    multiple1 = length1 / substr2_length

    # GCD for the strings
    substr2 = str2[0, substr2_length]
    ## "Verify if `str1` and `str2` are multiples of the substring found in `str2`."
    next unless (substr2 * multiple2) == str2
    return substr2 if (substr2 * multiple1) == str1
  end
  return ""
end
