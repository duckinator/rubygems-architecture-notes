# RubyGems' `require` hierarchy

To figure out how all of the parts of RubyGems fit into place, I started at `bin/gem`.

`bin/gem` requires:
- rubygems
- rubygems/gem_runner
- rubygems/exceptions

`rubygems` (`lib/rubygems.rb`) requires:
- rubygems/dependency_installer
- rubygems/user_interaction
- sets up autoload for all of:
    - rubygems/bundler_version_finder
    - rubygems/config_file
    - rubygems/dependency
    - rubygems/dependency_list
    - rubygems/installer
    - rubygems/util/licenses
    - rubygems/path_support
    - rubygems/platform
    - rubygems/request_set
    - rubygems/requirement
    - rubygems/resolver
    - rubygems/source
    - rubygems/source_list
    - rubygems/spec_fetcher
    - rubygems/specification
    - rubygems/util
    - rubygems/version
- rubygems/specification
- rubygems/exceptions
- `rubygems/defaults/operating_system`, if it exists (TODO: What is this from?)
- `rubygems/defaults/#{RUBY_ENGINE}`, if it exists (TODO: What is this from?)
- rubygems/core_ext/kernel_gem
- rubygems/core_ext/kernel_require
- rubygems/core_ext/kernel_warn

`rubygems/command_manager` requires:
- rubygems/user_interaction
- rubygems/command
- timeout (stdlib)
- `rubygems/commands/#{command_name}_command`

`rubygems/gem_runner` requires:
- rubygems/command_manager
- rubygems/config_file
- rubygems/deprecate

`rubygems/exceptions` requires:
- rubygems/deprecate

`rubygems/dependency_installer` requires:
- rubygems
- rubygems/dependency_list
- rubygems/package
- rubygems/installer
- rubygems/spec_fetcher
- rubygems/user_interaction
- rubygems/source
- rubygems/available_set
- rubygems/deprecate

`rubygems/user_interaction` requires:
- rubygems/util
- rubygems/deprecate
- io/console

`rubygems/bundler_version_finder` requires:
- rubygems/util

`rubygems/config_file` requires:
- rubygems/user_interaction
- rbconfig (stdlib)
- etc (stdlib)

`rubygems/dependency` requires:
- rubygems/bundler_version_finder
- rubygems/requirement

`rubygems/dependency_list` requires:
- tsort (stdlib)
- rubygems/deprecate

`rubygems/installer` requires:
- rubygems/command
- rubygems/exceptions
- rubygems/deprecate
- rubygems/package
- rubygems/ext
- rubygems/user_interaction
- fileutils (stdlib)
- pathname (stdlib)
- rubygems

`rubygems/util/licenses` requires:
- rubygems/text

`rubygems/platform` requires:
- rubygems/deprecate

`rubygems/request_set` requires:
- tsort  (stdlib)
- rubygems/dependency_installer
- `rubygems/request_set/*`

`rubygems/requirement` requires:
- rubygems/version
- rubygems/deprecate

`rubygems/resolver` requires:
- rubygems/dependency
- rubygems/exceptions
- rubygems/util
- rubygems/util/list
- `rubygems/resolver/*`

`rubygems/source` requires:
- via autoload:
  - fileutils
  - uri
- `rubygems/source/*`

`rubygems/source_list` requires:
- rubygems/source

`rubygems/spec_fetcher` requires:
- rubygems/remote_fetcher
- rubygems/user_interaction
- rubygems/errors
- rubygems/text
- rubygems/name_tuple

`rubygems/specification` requires:
- rubygems/version
- rubygems/requirement
- rubygems/platform
- rubygems/deprecate
- rubygems/basic_specification
- rubygems/stub_specification
- rubygems/specification_policy
- rubygems/util/list
- stringio
- rubygems/config_file
- rubygems/ext
- rubygems/user_interaction
- rubygems/psych_tree
- rubygems/user_interaction

`rubygems/util` requires:
- zlib
- stringio

`rubygems/version` requires:
- rubygems/requirement

`rubygems/core_ext/kernel_require` requires:
- monitor
