def scramble(s1,s2)
  s3 = s1.split("")
  s2.split("").each do |x|
    s3.each_with_index {|y,i| (s3.delete_at i ; break) if y == x}
  end
  s1.length - s2.length == s3.join.length ? true : false
end

scramble('rkqodlw','world')