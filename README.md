ssh-fingerprint
===============
[![Gem Version](https://badge.fury.io/rb/ssh-fingerprint.png)](http://badge.fury.io/rb/ssh-fingerprint) [![Build Status](https://travis-ci.org/victorgama/has_gravatar.png?branch=master)](https://travis-ci.org/victorgama/ssh-fingerprint) [![Dependency Status](https://gemnasium.com/victorgama/ssh-fingerprint.png)](https://gemnasium.com/victorgama/ssh-fingerprint) [![codecov](https://codecov.io/gh/victorgama/ssh-fingerprint/branch/master/graph/badge.svg)](https://codecov.io/gh/victorgama/ssh-fingerprint)

Generate a fingerprint given an SSH public key (without `ssh-keygen` or external dependencies)
* based on [bahamas10/node-ssh-fingerprint](https://github.com/bahamas10/node-ssh-fingerprint)

Installing
----------

ssh-fingerprint is distributed as a gem. Install it through the `gem` command or add it to your `Gemfile`:

**Installing through `gem`**
```
$ gem install ssh-fingerprint
```

**Installing through your `Gemfile`**
```ruby
gem 'ssh-fingerprint'
```

Usage
-----

Using it is really simple. Read the key content to a variable and call `SSHFingerprint.compute` method. Example:

```ruby
require 'ssh-fingerprint'

key = File.read(File.expand_path('~/.ssh/id_rsa.pub'))
puts SSHFingerprint.compute(key)
# => f5:d8:39:1d:7c:26:...
```

-------

Pull requests are welcome!
