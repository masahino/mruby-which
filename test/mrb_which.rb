##
## Which Test
##

assert("Which#which") do
  assert_not_nil Which.which('ruby')
  assert_equal nil, Which.which('hogehogehogehoge')
end
