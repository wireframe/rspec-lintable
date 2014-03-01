# Rspec::Lintable
> Ensure your controllers are returning "valid" Javascript responses

## Usage

```ruby
describe "#show" do
  before { get :show, format: :js }
  it { should be_lintable }
end
```

## Installation

Add the gem to your `test` group of your `Gemfile` and it will automatically be loaded into your RSpec runtime!

```ruby
# Gemfile
gem 'rspec-lintable', group: :test
```

## Configuration

All options and configuration are done via the standard [Jshint .jshintrc](http://www.jshint.com/docs/)
configuration file.

## Contributing

Interested in contributing?  Review the project [contribution guidelines](CONTRIBUTING.md) and get started!

Patches are always welcome and thank you to all [project contributors](https://github.com/wireframe/rspec-lintable/graphs/contributors)!
