##
## Which Test
##

assert("Which#which") do
  assert_not_nil Which.which('ruby')
  assert_equal 'a', Which.which('hogehogehogehoge')
end
