## Plunch - If you don't know what to chose for lunch [![Build Status](https://travis-ci.org/RaimundSchramm/plunch.svg?branch=master)](https://travis-ci.org/RaimundSchramm/plunch)

Tired of noodles every day?!
Get a quick overview what you had for lunch in the last weeks.
Chose from all the delicious dishes you know what to eat today.

To be continued...

This document explains what steps are necessary to get the
application up and running.

##System dependencies
- Ruby 2.1.5
- git
- some Javascript-Runtime-Environment, i.e. node.js

### Installation
- get the code
`git clone https://github.com/RaimundSchramm/plunch.git`
- install gems
`bundle`
- Initialize database
`rake db:setup`
- start the server
`rails s -e production -p [number of the port you need]`

### Configuration
none yet

### How to run the test suite
- conventionally by `rake`
- using guard `guard` and then hit enter or wait for the first relevant file change

### Services (job queues, cache servers, search engines, etc.) - none
### Deployment instructions
