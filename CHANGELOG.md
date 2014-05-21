chef_client CHANGELOG
=====================

This file is used to list changes made in each version of the chef_client cookbook.

0.2.0
-----
* Manual `chef_client.sleep_time` in chef-solo not longer needed (but recommended because chef-solo does not have attribute persistence).

0.1.1
-----
- Bugfix: Random `chef_client.sleep_time` attribute now also works in ruby 1.8

0.1.0
-----
- Initial release of chef_client
