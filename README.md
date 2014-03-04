omnibus_serverspec Cookbook
===========================

** unofficial **

This cookbook installs the [serverspec](http://serverspec.org/) package made by [omnibus-ruby project](https://github.com/OpsRockin/omnibus-serverspec).

Supports
----

### tested

- CentOS6
- Ubuntu 

### maybe works

- Redhat family and friends
- Debian based distributions

Requirements
------------

- chef

Attributes
----------

TODO: List your cookbook attributes here.


Usage
-----
#### omnibus_serverspec::default

Just include `omnibus_serverspec` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[omnibus_serverspec]"
  ]
}
```

Installs serverspec and dependencies to `/opt/serverspec/*`

Test
---

```
$ bundle
$ kitchen test
```

### Testing environment and suites

- test-kitchen
  - vagrant
  - shindo



Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------

apache2 license.


Author: SAWANOBORI Yukihiko(<sawanboriyu@higanworks.com>)

