chef_client Cookbook
====================

Chef cookbook to setup chef-client as a periodic cron job.

Requirements
------------

* Chef 11 or higher
* Ruby 1.8.7 or higher
* The cron cookbook: https://github.com/opscode-cookbooks/cron

Attributes
----------

#### chef_client::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['chef_client']['bin']</tt></td>
    <td>String</td>
    <td>The chef-client executable to be run by the cron job</td>
    <td><tt>/usr/local/bin/chef-client</tt></td>
  </tr>
  <tr>
    <td><tt>['chef_client']['sleep_time']</tt></td>
    <td>Integer</td>
    <td>Seconds to sleep before running chef-client. If nil it will be a random value</td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>['chef_client']['log_dir']</tt></td>
    <td>String</td>
    <td>Directory where the chef-client log will be stored</td>
    <td><tt>/var/log/chef-client</tt></td>
  </tr>
  <tr>
    <td><tt>['chef_client']['log_file']</tt></td>
    <td>String</td>
    <td>The chef-client log path. By default relative to the log_dir attribute value</td>
    <td><tt>/var/log/chef-client/chef-client.log</tt></td>
  </tr>
  <tr>
    <td><tt>['chef_client']['cron']['minute']</tt></td>
    <td>String</td>
    <td>The minute argument for the cron job</td>
    <td><tt>*/30</tt></td>
  </tr>
  <tr>
    <td><tt>['chef_client']['cron']['hour']</tt></td>
    <td>String</td>
    <td>The hour argument for the cron job</td>
    <td><tt>*</tt></td>
  </tr>
</table>

Usage
-----
#### chef_client::default

Just include `chef_client` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[chef_client]"
  ]
}
```
