# Bundler Link

A bundler command to quickly link up gems from your local filesystem
inside your Gemfile.

## Installation

Install the additional Bundler command.

    $ gem install bundler-link

## Usage

First go to the development directory of the gem you want to link:

    $ cd ~/my_gem
    $ bundle link

This creates a symlink to your project under
`~/.bundler-link/gems/my_gem`. Then go to a project using your gem. 

    $ cd ~/other_project
    $ bundle link my_gem

Changes the gem's `Gemfile` entry to link to a the local checkout via
the `:path` option.

Changes in the `Gemfile` can be undone by a running:

    $ bundle unlink my_gem

## Development

After checking out the repo, run `bin/setup` to install
dependencies. Then, run `rake spec` to run the tests. You can also run
`bin/console` for an interactive prompt that will allow you to
experiment.

To install this gem onto your local machine, run `bundle exec rake
install`. To release a new version, update the version number in
`version.rb`, and then run `bundle exec rake release`, which will
create a git tag for the version, push git commits and tags, and push
the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at
https://github.com/[USERNAME]/bundler-link. This project is intended
to be a safe, welcoming space for collaboration, and contributors are
expected to adhere to the
[Contributor Covenant](https://contributor-covenant.org) code of
conduct.

