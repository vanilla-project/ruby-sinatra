# Vanilla Ruby Sinatra Project

This repository shows a basic setup for a Sinatra web application in Ruby.


## Getting Started

Ruby and Bundler is expected to be installed on our system.


### Installing

After cloning this repository, change into the newly created directory and run
```
bundle install
```
This will install all dependencies needed for the project.


## Running the Tests

All tests can be run by executing

```
bundle exec rspec
```

`rspec` will automatically find all tests inside the `spec` directory and run them.


### Testing Approach

The main Sinatra application is defined in `app/Application.rb`.
The tests for it use [`rack-test`](http://github.com/rack-test/rack-test) to verify that the index page can be rendered successfully.
This gem provides helper methods to exercise a Rack application during testing (e.g. `get` to send a GET request to the application).


## Running the Application

Sinatra uses [Rack](http://rack.github.io), a standard interface for Ruby webservers, behind the scenes.
Rack applications can be configured via a file called [`config.ru`](config.ru) and started with the command `rackup`.

When executing

```
bundle exec rackup
```

it will automatically look for the file `config.ru` as it is the default when no arguments were given.

When executing the above command it will print logging information similar to the following:

```
$: bundle exec rackup
[2017-07-13 07:20:01] INFO  WEBrick 1.3.1
[2017-07-13 07:20:01] INFO  ruby 2.3.1 (2016-04-26) [x86_64-linux]
[2017-07-13 07:20:01] INFO  WEBrick::HTTPServer#start: pid=26153 port=9292
...
```

This shows that the application is running and listening on port `9292`.
The host and port can also be configured via `--host` and `--port` arguments respectively.

Using a browser to navigate to `http://localhost:9292` will then show the example page.


## Built With

- [Ruby](https://www.ruby-lang.org/en)
- [Bundler](http://bundler.io)
- [Sinatra](http://www.sinatrarb.com)
- [RSpec](http://rspec.info)


## License

This project is licensed under the MIT License - see the [license.md](license.md) file for details.

