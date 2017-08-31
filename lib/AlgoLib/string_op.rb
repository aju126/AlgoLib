class StringOp

  def sub_large(x, y)
    vary = 1 ## Blocks of string to be converted to int
    diff = ""

    if x.length < y.length
      str1 = y
      str2 = x
      big = y.length
    else
      str1 = x
      str2 = y
      big = x.length
    end

    i1 = str1.length
    j1 = str1.length
    i2 = str2.length
    j2 = str2.length

    val = big % vary == 0 ? big / vary : (big/vary) + 1
    p "loop times is #{val}"
    val.times.each do

      i1 -= vary
      i2 -= vary
      p "i1 is #{i1} and j1 is #{j1}"
      temp1 = str1[i1...j1].to_i unless i1 < 0
      temp2 = str2[i2...j2].to_i unless i2 < 0
      p "first value is #{temp1} and second is #{ temp2 }"

      diff << (dif(temp1, temp2)).to_s
      p "difference is #{diff}"
      j1 -= vary
      j2 -= vary
    end
    diff
  end

  def dif(v1, v2)
    v1 > v2 ? v1 - v2 : v2 - v1
  end
end