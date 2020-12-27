# Dassets::Erubi

Dassets [engine](https://github.com/redding/dassets#compiling) to compile dynamic asset files written with ERB using [Erubi](https://github.com/jeremyevans/erubi).

This is a clone of [Dassets::Erb](https://github.com/redding/dassets-erb) but uses Erubi to do the compilation.

## Usage

Register the engine:

```ruby
# in config/assets.rb
require "dassets"
require "dassets-erubi"

Dassets.configure do |c|
  c.source "/path/to/assets") do |s|
    s.engine "erb", Dassets::Erubi::Engine
  end
end
```

Add `.erb` to any source files in your source path.  Dassets will compile their content using Erubi, remove the `.erb` extension, and write the output to the output path.

## Installation

Add this line to your application's Gemfile:

    gem "dassets-erubi"

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dassets-erubi

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am "Added some feature"`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
