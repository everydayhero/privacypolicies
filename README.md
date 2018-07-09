# Everydayhero Privacy Policies

This gem contains the source of historical truth for Everydayhero's versioned
privacy policies. If you want to 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'edh_privacy_policies', github: "everydayhero/privacypolicies" 
```

And then execute:

    $ bundle

## Usage

Call any of the static module methods on the gem with one of Everydayhero's
supported locales. We support the following locales:

* en-AU
* en-GB
* en-IE
* en-NZ
* en-US

Get current policy version for a locale:

```ruby
require 'edh_privacy_policies'

EdhPrivacyPolicies.current_policy_version('en-GB')
# -> "2018-05-09"
```

Get all policy versions for a locale:

```ruby
require 'edh_privacy_policies'

EdhPrivacyPolicies.policy_versions('en-IE')
# -> ["2018-05-23", "2017-11-06"]
```

Get current policy content for a locale:

```ruby
require 'edh_privacy_policies'

EdhPrivacyPolicies.current_policy('en-IE')
# -> {"title": "Privacy Policy", ...}
```

Get all policies for a locale as a hash:

```ruby
require 'edh_privacy_policies'

EdhPrivacyPolicies.all_policies('en-IE')
# -> { "2018-05-23": { title: "Privacy Policy", ...}, "2017-11-06": { ... } }
```
