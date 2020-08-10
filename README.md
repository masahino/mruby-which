# mruby-which   [![Build Status](https://travis-ci.org/masahino/mruby-which.svg?branch=master)](https://travis-ci.org/masahino/mruby-which)
Which class
## install by mrbgems
- add conf.gem line to `build_config.rb`

```ruby
MRuby::Build.new do |conf|

    # ... (snip) ...

    conf.gem :github => 'masahino/mruby-which'
end
```
## example
```ruby
Which.which('ls')
#=> "/bin/ls"

```

## License
under the MIT License:
- see LICENSE file
